class Page < ApplicationRecord
  validates :title, :presence => true, :uniqueness => true
end
