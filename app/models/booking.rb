class Booking < ApplicationRecord
  belongs_to :dog
  belongs_to :user
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :dog_id, presence: true
  validates :user_id, presence: true
end
