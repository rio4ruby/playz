# frozen_string_literal: true

module ApplicationHelper
  def search_query(term)
    '?' + { q: term }.to_query
  end
end
