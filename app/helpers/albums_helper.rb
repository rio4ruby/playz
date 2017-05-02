# frozen_string_literal: true

module AlbumsHelper
  def albumart_url(album, _size = 'medium')
    image_file = album.album_image_file
    if image_file
      image_file.imageurl
    else
      Rails.configuration.media['image_url'].sub(%r{/+$}, '') + '/media-optical-audio_mount.png'
    end
  end
end
