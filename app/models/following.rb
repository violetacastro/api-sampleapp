class Following < ApplicationRecord
  validates :author_id, presence: true
  validates :follower_id, presence: true
end
