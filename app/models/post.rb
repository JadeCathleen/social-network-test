class Post < ApplicationRecord
  belongs_to :user
  has_many :emojis, dependent: :destroy
  has_one_attached :photo
  validates :photo, attached: true
  validates :title, presence: true
  validates :content, presence: true
end
