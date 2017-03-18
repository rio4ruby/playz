# frozen_string_literal: true
class Album < ApplicationRecord
  belongs_to :album_dir, class_name: 'FileDir'
  belongs_to :album_artist, class_name: 'Artist'
  belongs_to :album_image_file, class_name: 'ImageFile'

  has_many :audio_files, dependent: :nullify
  has_many :artists, through: :audio_files
  has_many :songs, through: :audio_files
  has_many :genres, through: :audio_files
  has_many :file_dirs, through: :audio_files
  has_many :image_files, through: :file_dirs
  has_many :list_nodes, as: :listable

  validates :name, presence: true, uniqueness: { scope: :album_dir_id }

  searchable auto_index: true, auto_remove: true do
    integer :id

    string :name
    text :name_text, boost: 0.9 do
      name
    end
    text :name_textp, stored: true, boost: 0.5, as: :name_textp do
      name
    end

  end

  def album_artist_name
    album_artist ? album_artist.name : nil
  end

  def create_list_node_all(parent, filter_recs = [])
    new_node = parent.children.create(listable: self)
    create_list_node_children(new_node, filter_recs)
  end

  def create_list_node(parent)
    new_node = parent.children.create(listable: self)
    new_node
  end

  def create_list_node_children(parent, filter_recs = [])
    audio_files.limit_to(*filter_recs).order('tracknum').each do |af|
      af.create_list_node(parent)
      p "CREATE_LIST_NODE for #{af} in parent=#{parent.id}"
    end
    parent
  end

  def node_class(node)
    classes = ''
    audio_files = node.children.all.map(&:listable)
    artists = audio_files.map(&:artist)
    classes += if artists.uniq.size == 1
                 'single-artist'
               else
                 'multi-artist'
               end
    classes
  end
end
