# frozen_string_literal: true

module AlbumsHelper
  def coverart_url(album, size = 'medium')
    artist = album.album_artist
    if artist
      album_name = album.name
      artist_name = artist.name
      path = "/#{artist_name}/#{album_name}/cover/#{size}.jpg"
      url = "http://albumart.kitatdot.net" + path
    end
    url
  end

  def albumart_url(album, size = 'medium')
    # coverart_url(album,size)
    image_file = album.album_image_file
    if image_file
      image_file.imageurl
    else
      Rails.configuration.media['image_url'].sub(%r{/+$}, '') + '/media-optical-audio_mount.png'
    end
  end
end
