class Activity < ApplicationRecord
  belongs_to        :user
  has_many          :bookings
  has_one_attached  :photo

  validates :name, :price, :location, :duration, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  include PgSearch::Model
  pg_search_scope :search_by_name_and_location,
    against: [ :name, :location ],
    using: {
      tsearch: { prefix: true }
    }
  # pg_search_scope :global_search,
  # against: [ :name, :location ],
  # associated_against: {
  #   director: [ :first_name, :last_name ]
  # },
  # using: {
  #   tsearch: { prefix: true }
  # }
end
