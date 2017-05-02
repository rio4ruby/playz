# frozen_string_literal: true

class ImageFile < ApplicationRecord
  belongs_to :file_dir

  scope(:midsize, lambda {
    where(['image_files.columns < ? AND image_files.number_colors > ? ', 325, 1])
  })

  def filepath
    [file_dir.name, filename].join('/')
  end

  def fileurl
    filepath.sub('/srv/mp3/', '')
  end

  def rooturl
    Rails.configuration.media['image_url'].sub(%r{/+$}, '')
  end

  def imageurl
    rooturl + '/' + URI.escape(fileurl)
  end
end
