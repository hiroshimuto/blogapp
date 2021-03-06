class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes
  has_many :liked_users, through: :likes, source: :user
  mount_uploader :image, ImageUploader
  validates :title, presence: true
  validates :content, presence: true
end
