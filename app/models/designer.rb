class Designer < ApplicationRecord
    has_many :events
    has_many :user_favorites
    has_many :users, through: :user_favorites

def self.search(term)
      if term
        where('name LIKE ?', "%#{term}%").order('id DESC')
      else
        order('id DESC')
      end
    end
end
