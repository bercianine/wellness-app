class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :activities
  has_many :bookings

  validates :email, :encrypted_password, :first_name, :last_name, presence: true
  validates :encrypted_password, length: { minimum: 6}
  validates :email, uniqueness: true
end
