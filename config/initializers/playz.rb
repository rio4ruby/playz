# frozen_string_literal: true

# Read media urls from config/media.yml
Rails.application.config.media = Rails.application.config_for(:media)
