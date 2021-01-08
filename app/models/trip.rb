class Trip < ActiveRecord::Base
  validates :author_id, presence: true
end
