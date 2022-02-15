class Post < ApplicationRecord
  belongs_to :user, optional: true
  has_many :likes, dependent: :destroy

  def liked?(user)
    !!likes.find { |like| like.user == user.id }
  end
end
