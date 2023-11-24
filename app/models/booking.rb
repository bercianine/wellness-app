class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :activity

  validates :date, presence: true
end
