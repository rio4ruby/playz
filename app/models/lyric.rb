# frozen_string_literal: true

class Lyric < ApplicationRecord
  belongs_to :artist
  belongs_to :song

  searchable auto_index: true, auto_remove: true do
    integer :id

    text :text, stored: true, boost: 10
  end

  MSTR = "[...]\n\n" \
         "Unfortunately, we are not licensed to display the full lyrics for this\n" \
         "song at the moment. Hopefully we will be able to in the future. Until\n" \
         "then, how about a random page?\n\n" \
         '[I want to edit metadata]'.freeze

  def lyric_text_to_html(txt)
    txt.sub(MSTR, '&hellip;')
  end

  def html_text
    lyric_text_to_html(text).gsub("\n", '<br/>')
  end
  0
end
