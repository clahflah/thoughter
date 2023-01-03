class Thought < ApplicationRecord
  belongs_to :user
  validates :content, presence: true
  validates :content, length: { maximum: 180 }
  has_many :likes
end
