class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :content, presence: true
  validate :check_length

  def user_name
    user.name
  end

  def check_length
    if !content.nil? && content.length > 250
      errors.add(:content, "Comment cannot be greater than 250 characters in length!")
    end
  end


end
