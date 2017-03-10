# frozen_string_literal: true
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :list_heads

  after_create :create_playing_playlist

  private

  def create_playing_playlist
    list_head = ListHead.create!(name: 'Playing', is_playing: true, user: self)
    list_node = ListNode.create!(listable: list_head)
    Rails.logger.info("CREATE_PLAYING_PLAYLIST: #{email} list_node = #{list_node}")
  end
end
