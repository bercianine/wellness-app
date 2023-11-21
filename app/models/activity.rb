class Activity < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, :price, :location, :duration, :img_url, presence: true
end
