class User < ApplicationRecord
  has_many :user_events
  has_many :events, through: :user_events
  has_many :user_favorites
  has_many :designers, through: :user_favorites
end
