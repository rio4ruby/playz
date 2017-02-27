class HomeController < ApplicationController
  before_filter :authenticate_user!

  def index
    Rails.logger.info("Index Search: #{params}")
    @q = params[:q]
    @q ||= ""

    if @q
      srch = [Artist,Album,AudioFile].select{|c| params[c.to_s.to_sym]}
      srch = [Artist,Album,AudioFile] if srch.empty?
      per_page = 10
      @search = Sunspot.search(*srch) do |s|
        s.data_accessor_for(Lyric).include = [:artist, :song]
        s.data_accessor_for(Album).include = [:album_artist, { audio_files: [:song, :artist, { file_dir: :image_files}] }]
        s.data_accessor_for(AudioFile).include = [:album, :artist, :song, :file_dir]
        s.data_accessor_for(Artist).include = [:albums, { audio_files: [:album, :song, :file_dir] } ]
        s.order_by(:random) if @q == ""
        s.keywords @q
        
        s.paginate :page => params[:page], :per_page => per_page
      end
    end

    respond_to do |format|
      format.html
    end

  end
end
