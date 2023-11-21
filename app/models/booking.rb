class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :activity

  validates :date, :start_time, presence: true
end
