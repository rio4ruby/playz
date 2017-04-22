# frozen_string_literal: true
class SearchService
  DEFAULT_OPTS = { page: 1, per: 10 }.freeze

  attr_reader :opts
  def initialize(params = {})
    @opts = params
    @opts[:per] ||= DEFAULT_OPTS[:per]
  end

  def self.search(opts = {}, *models)
    search_service = new(opts)
    search_service.search(*models)
  end

  def search(*models)
    opts[:q] ||= ''
    Sunspot.search(*models) do |s|
      s.data_accessor_for(Lyric).include = [:artist, :song]
      s.data_accessor_for(Album).include = [:album_artist, { audio_files: [:song, :artist, { file_dir: :image_files }] }]
      s.data_accessor_for(AudioFile).include = [:album, :artist, :song, :file_dir]
      s.data_accessor_for(Artist).include = [:albums, { audio_files: [:album, :song, :file_dir] }]

      s.order_by(:random) if opts[:q] == ''
      s.keywords opts[:q]
      s.paginate page: opts[:page], per_page: opts[:per]
      s.order_by(:score, :desc)
      s.order_by(:name, :asc)
    end
  end

  def search0(*models)
    if opts[:q]
      Sunspot.search(*models) do |s|
        s.keywords opts[:q]
        s.paginate page: opts[:page], per_page: opts[:per]
        s.order_by(:name, :asc)
      end.results
    else
      models.first.order(:name).page(opts[:page]).per(opts[:per])
    end
  end
end
