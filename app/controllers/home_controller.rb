# frozen_string_literal: true
class HomeController < ApplicationController
  layout proc { |controller| controller.request.xhr? ? false : 'application' }

  respond_to :html, :js
  before_action :authenticate_user!

  def index
    Rails.logger.info("Index Search: #{params.inspect}")
  end

  def home; end

  def player; end

  def playlist; end

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
  end
end
