# frozen_string_literal: true

class ListNode < ApplicationRecord
  belongs_to :listable, polymorphic: true

  has_ancestry orphan_strategy: :destroy, cache_depth: true
  acts_as_list scope: 'ancestry = \'#{ancestry}\''

  scope(:ordered, -> { order(:ancestry_depth, :position) })
  scope(:my, lambda { |user|
    root.joins(:list_heads).where('list_heads.user_id = ?', user.id)
  })

  def flatten(node)
    pos = node.position
    child_ids = node.child_ids
    n_holes = child_ids.size - 1
    node.siblings.where(['position > ?', pos]).update_all("position = (position + #{n_holes})")
    to_list_id = node.parent_id
    Rails.logger.info("flatten: pos = #{pos}")

    node.children.each_with_index do |n, i|
      n.parent_id = to_list_id
      n.position = pos + i
      n.save!
      Rails.logger.info("  flatten: i=#{i} insert_at=#{pos + i}")
    end
    node.delete
  end

  def move_to(dest_node_id, pos)
    # p "id=#{id} dest_node_id=#{dest_node_id} parent.id=#{parent.id} pos=#{pos} position=#{position}"

    remove_from_list

    unless dest_node_id == parent.id
      self.parent_id = dest_node_id
      save!
    end

    insert_at(pos)
    save!
  end

  def create_single_node
    create_nodes([self])
  end

  def create_subtree_nodes
    create_nodes(ListNode.includes(:listable).ordered.subtree_of(id).all)
  end

  def create_subtree_nodetree
    NodeTree.subtree_of(id)
  end

  def build_nodes(sub_tree)
    nodes = { audio_files: {}, albums: {}, songs: {}, artists: {} }
    sub_tree.each do |ln|
      nodes[ln.id] = { node: ln, children: [] }
      if ln.parent_id && nodes[ln.parent_id]
        nodes[ln.parent_id][:children] << ln.id
        nodes[ln.listable.class.to_s.tableize.to_sym][ln.listable.id] = ln.listable
      end
    end
    nodes
  end

  def create_nodes(sub_tree)
    nodes = build_nodes(sub_tree)

    af_album_ids = nodes[:audio_files].values.map(&:album_id)
    af_albums = Album.find(af_album_ids)
    nodes[:albums].merge!(Hash[af_albums.map { |s| [s.id, s] }])

    af_artist_ids = nodes[:audio_files].values.map(&:artist_id).uniq
    af_artists = Artist.find(af_artist_ids)
    nodes[:artists] = Hash[af_artists.map { |s| [s.id, s] }]

    songs = Song.find(nodes[:audio_files].values.map(&:song_id))
    nodes[:songs] = Hash[songs.map { |s| [s.id, s] }]

    file_dirs = FileDir.find(nodes[:audio_files].values.map(&:file_dir_id))
    nodes[:file_dirs] = Hash[file_dirs.map { |s| [s.id, s] }]

    nodes
  end
end
