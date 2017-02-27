module AlbumsHelper

  def albumart_url(album,size = 'medium')
    "/albums/#{album.id}/image?sz=#{size}"
  end

end
