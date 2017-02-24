class ListNode < ApplicationRecord
  belongs_to :listable, :polymorphic => true

  has_ancestry :orphan_strategy => :destroy, :cache_depth => true
  acts_as_list :scope => 'ancestry = \'#{ancestry}\''

  scope :ordered, -> { order(:ancestry_depth, :position) }
  scope :my, lambda { |user|
    self.root.joins(:list_heads).where("list_heads.user_id = ?", user.id)
  }

  def create_single_node
    create_nodes([self])
  end

  def create_subtree_nodes
    create_nodes(ListNode.includes(:listable).ordered.subtree_of(self.id).all)
  end

  def create_subtree_nodetree
    NodeTree.subtree_of(self.id)
  end

  def create_nodes(sub_tree)
    nodes = {
      :audio_files => {},
      :albums => {},
      :songs => {},
      :artists => {},
    }
    sub_tree.each do |ln|
      nodes[ln.id] = { 
        :node => ln,
        :children => []
      }
      if ln.parent_id && nodes[ln.parent_id]
        nodes[ln.parent_id][:children] << ln.id
        nodes[ln.listable.class.to_s.tableize.to_sym][ln.listable.id] = ln.listable
      end
    end
    
    af_album_ids = nodes[:audio_files].values.map{|af| af.album_id}
    af_albums = Album.find(af_album_ids)
    nodes[:albums].merge!(Hash[af_albums.map{|s| [s.id,s]}])
    
    af_artist_ids = nodes[:audio_files].values.map{|af| af.artist_id}.uniq
    af_artists = Artist.find(af_artist_ids)
    nodes[:artists] = Hash[af_artists.map{|s| [s.id,s]}]
    
    songs = Song.find(nodes[:audio_files].values.map{|af| af.song_id})
    nodes[:songs] = Hash[songs.map{|s| [s.id,s]}]
    
    file_dirs = FileDir.find(nodes[:audio_files].values.map{|af| af.file_dir_id})
    nodes[:file_dirs] = Hash[file_dirs.map{|s| [s.id,s]}]
    
    nodes
  end

end
