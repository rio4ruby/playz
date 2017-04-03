# frozen_string_literal: true
class HomeController < ApplicationController
  layout proc { |controller| controller.request.xhr? ? false : 'application' }

  respond_to :html, :js
  # layout 'appfixed', only: 'playlist'
  before_action :authenticate_user!

  def index
    Rails.logger.info("Index Search: #{params.inspect}")
    # @q = params[:q] || ''

    # if @q
    #   srch = [Artist, Album, AudioFile].select { |c| params[c.to_s.to_sym] }
    #   srch = [Artist, Album, AudioFile] if srch.empty?
    #   per_page = 10
    #   @search = Sunspot.search(*srch) do |s|
    #     s.data_accessor_for(Lyric).include = [:artist, :song]
    #     s.data_accessor_for(Album).include = [:album_artist, { audio_files: [:song, :artist, { file_dir: :image_files }] }]
    #     s.data_accessor_for(AudioFile).include = [:album, :artist, :song, :file_dir]
    #     s.data_accessor_for(Artist).include = [:albums, { audio_files: [:album, :song, :file_dir] }]
    #     s.order_by(:random) if @q == ''
    #     s.keywords @q

    #     s.paginate page: params[:page], per_page: per_page
    #   end
    # end

    # respond_to do |format|
    #   format.html
    # end
  end

  def home; end

  def player; end

  def playlist
    respond_to do |format|
      format.html
    end
  end

  def search
    Rails.logger.info("Search: #{params}")
    search_service = SearchService.new(params)
    @search = search_service.search(Artist, Album, AudioFile)
    @q = search_service.opts[:q] || ''
  end

  def search_form
    Rails.logger.info("Search Form: #{params}")
    @q = params[:q] || ''
  end

  def search_results
    Rails.logger.info("Search Results: #{params}")
    search_service = SearchService.new(params)
    @search = search_service.search(Artist, Album, AudioFile)
    @q = search_service.opts[:q] || ''

    #    respond_to do |format|
    #      format.html
    #    end
  end

  def search0
    Rails.logger.info("Search: #{params}")
    @q = params[:q] || ''

    if @q
      srch = [Artist, Album, AudioFile].select { |c| params[c.to_s.to_sym] }
      srch = [Artist, Album, AudioFile] if srch.empty?
      per_page = 10
      @search = Sunspot.search(*srch) do |s|
        s.data_accessor_for(Lyric).include = [:artist, :song]
        s.data_accessor_for(Album).include = [:album_artist, { audio_files: [:song, :artist, { file_dir: :image_files }] }]
        s.data_accessor_for(AudioFile).include = [:album, :artist, :song, :file_dir]
        s.data_accessor_for(Artist).include = [:albums, { audio_files: [:album, :song, :file_dir] }]
        s.order_by(:random) if @q == ''
        s.keywords @q

        s.paginate page: params[:page], per_page: per_page
      end
    end

    respond_to do |format|
      format.html
    end
  end
end
