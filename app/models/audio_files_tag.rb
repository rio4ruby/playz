# frozen_string_literal: true
class AudioFilesTag < ApplicationRecord
  belongs_to :audio_file
  belongs_to :tag
end
