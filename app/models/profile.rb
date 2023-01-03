class Profile < ApplicationRecord
  belongs_to :user
  has_many :friendships
  validates :user_name, :first_name, :last_name, :bio, :location, presence: true
  validates :user_name, uniqueness: true
  validates :bio, length: { minimum: 10 }
end
