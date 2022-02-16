class Post < ApplicationRecord
  belongs_to :user, optional: true
  has_many :likes, dependent: :destroy

  def liked?(id)
    !!likes.find { |like| like.user_id == id }
  end
end
