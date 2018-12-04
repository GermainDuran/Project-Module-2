class Designer < ApplicationRecord
    has_many :events
    has_many :user_favorites
    has_many :users, through: :user_favorites
    
end
