class Dog < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user

  validates :name, presence: true
  validates :breed, presence: true
  validates :cuddly, presence: true
  validates :energetic, presence: true
  validates :obedient, presence: true
  validates :couchpotato, presence: true
  validates :photo, presence: true
  mount_uploader :photo, PhotoUploader
end
