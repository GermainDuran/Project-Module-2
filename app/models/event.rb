class Event < ApplicationRecord
  has_many :user_events
  has_many :users, through: :user_events
  belongs_to :designer
  has_many :comments

  def self.search(term)
        if term
          where('title LIKE ?', "%#{term}%").order('id DESC')
        else
          order('id DESC')
        end
  end
end
