class Activity < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  validates :name, :price, :location, :duration, :photo, presence: true
end
