# frozen_string_literal: true

require 'ostruct'

class NodeTree
  attr_reader :list_nodes, :nodes, :root_id
  def initialize(list_nodes)
    @root_id = list_nodes[0].id unless list_nodes.empty?
    @nodes = {}
    @recs = {}
    create_nodes(list_nodes)
    @list_node_ids = nil
  end

  def fill
    audio_file_recs
    self
  end

  def self.single(node)
    self.class.new([node])
  end

  def self.subtree_of(node_id)
    self.class.new(ListNode.includes(:listable).ordered.subtree_of(node_id).all)
  end

  def list_node(node_id = @root_id)
    @nodes[node_id][:node]
  end

  def children(node_id = @root_id)
    @nodes[node_id][:children]
  end

  def create_nodes(list_nodes)
    list_nodes.each do |ln|
      @nodes[ln.id] = {
        node: ln,
        children: []
      }
      if ln.parent_id && @nodes[ln.parent_id]
        @nodes[ln.parent_id][:children] << ln.id
        # @recs[ln.listable.class.to_s.tableize.to_sym][ln.listable.id] = ln.listable
      end
    end
  end

  def create_struct(node_id)
    ln = list_node(node_id)
    rec = ln.listable
    st = OpenStruct.new
    st.id = rec.id
    st.node_id = node_id
    st.class_name = rec.class.to_s
    case ln.listable.class.to_s
    when 'AudioFile'
      audio_file_struct(st, rec)
    when 'Album'
      album_struct(st, rec)
    when 'ListHead'
      list_head_struct(st, rec)
    end
  end

  def audio_file_struct(st, af)
    st.length = af.length
    st.tracknum = af.tracknum
    st.song_name = song_recs[af.song_id].name
    st.artist_name = artist_recs[af.artist_id].name
    st.album_name = album_recs[af.album_id].name
    st.name = "#{st.song_name} - #{st.artist_name}"
    file_dir_name = file_dir_recs[af.file_dir_id].name
    file_path = [file_dir_name, af.filename].join('/')
    file_url = file_path.sub('/srv/mp3/', '')
    st.url = Rails.configuration.media['audio_url'].sub(%r{/+$}, '') + '/' + URI.escape(file_url)
    st
  end

  def n_child_artists(node_id)
    children = self.children(node_id)
    list_node(node_id).listable_type == 'Album' ? children.map { |nid| list_node(nid).listable.artist_id }.uniq.size : 0
  end

  def album_struct(st, album)
    st.album_image_file = album.album_image_file
    st.name = album.name
    st.album_artist_name = album.album_artist_name
    children = self.children(st.node_id)
    artist_ids = children.map { |nid| list_node(nid).listable.artist_id }.uniq
    artists = artist_ids.map { |aid| artist_recs[aid] }
    st.artists = artists
    st
  end

  def list_head_struct(st, list_head)
    st.name = list_head.name
    st
  end

  def create_playdata(node)
    return unless node && node.listable_type == 'AudioFile'
    "list_node-#{node.id}--audio_file-#{node.listable.id}--album-#{node.listable.album_id}"
  end

  def playdata_in_tree(playdata)
    ln_el = playdata.split('--').first
    ln_id = ln_el.split('-').last
    @nodes[ln_id.to_i]
  end

  def audio_file_node_ids
    @audio_file_node_ids ||= list_node_ids.select { |nid| list_node(nid).listable_type == 'AudioFile' }
  end

  def audio_file_list_nodes
    @audio_file_list_nodes ||= audio_file_node_ids.map { |nid| list_node(nid) }
  end

  def first_audio_file_node
    audio_file_list_nodes.empty? ? nil : audio_file_list_nodes.first
  end

  def first_audio_file_node_id
    audio_file_list_nodes.empty? ? nil : audio_file_list_nodes.first.id
  end

  def next_audio_file_node_id(node_id)
    idx = audio_file_list_nodes.index { |ln| ln.id == node_id }
    next_node = audio_file_list_nodes[idx + 1]
    next_node ? next_node.id : nil
  end

  def album_node_ids
    @album_node_ids ||= list_node_ids.select { |nid| list_node(nid).listable_type == 'Album' }
  end

  def audio_file_recs
    @recs[:audio_files] ||= Hash[audio_file_node_ids.map { |nid| [list_node(nid).listable.id, list_node(nid).listable] }]
  end

  def audio_file_ids
    audio_file_recs.keys
  end

  def audio_files
    audio_file_recs.values
  end

  def audio_file_album_ids
    audio_files.map(&:album_id)
  end

  def album_recs
    @recs[:albums] ||= create_album_recs
  end

  def artist_recs
    @recs[:artists] ||= create_artist_recs
  end

  def song_recs
    @recs[:songs] ||= create_song_recs
  end

  def file_dir_recs
    @recs[:file_dirs] ||= create_file_dir_recs
  end

  def create_song_recs
    af_song_ids = audio_files.map(&:song_id).uniq
    af_songs = Song.find(af_song_ids)
    Hash[af_songs.map { |s| [s.id, s] }]
  end

  def create_file_dir_recs
    af_file_dir_ids = audio_files.map(&:file_dir_id).uniq
    af_file_dirs = FileDir.find(af_file_dir_ids)
    Hash[af_file_dirs.map { |s| [s.id, s] }]
  end

  def create_artist_recs
    af_artist_ids = audio_files.map(&:artist_id).uniq
    af_artists = Artist.find(af_artist_ids)
    Hash[af_artists.map { |s| [s.id, s] }]
  end

  def create_album_recs
    album_recs = Hash[album_node_ids.map { |nid| [list_node(nid).listable.id, list_node(nid).listable] }]
    af_album_ids = audio_file_album_ids
    af_albums = Album.find(af_album_ids)
    album_recs.merge!(Hash[af_albums.map { |s| [s.id, s] }])
    album_recs
  end

  def list_node_ids
    unless @list_node_ids
      @list_node_ids = []
      list_node_ids_depth(@root_id, @list_node_ids)
    end
    @list_node_ids
  end

  def list_node_ids_depth(node_id, list = [])
    return unless node_id
    list << node_id
    @nodes[node_id][:children].each do |nid|
      list_node_ids_depth(nid, list)
    end
  end
end
