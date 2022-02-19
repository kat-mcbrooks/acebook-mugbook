class Post < ApplicationRecord
  belongs_to :user, optional: true
  has_many :likes, dependent: :destroy
  has_many_attached :images, dependent: :destroy
  # has_one_attached :image, dependent: :destroy

  def liked?(id)
    !!likes.find { |like| like.user_id == id }
  end

  def editable?
    p Time.now.to_i
    Time.now.to_i < created_at.since(600).to_i
  end
end
