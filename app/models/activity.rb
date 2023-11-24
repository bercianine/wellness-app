class Activity < ApplicationRecord
  belongs_to        :user
  has_many          :bookings
  has_one_attached  :photo

  attr_accessor :available_dates_array

  validates :name, :price, :location, :duration, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  include PgSearch::Model
  pg_search_scope :search_by_name_and_location,
    against: [ :name, :location ],
    using: {
      tsearch: { prefix: true }
    }
end
