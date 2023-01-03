class Like < ApplicationRecord
  belongs_to :user
  belongs_to :thought
  validates :user_id, :thought_id, presence: true
end
