class Offer < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :bookings
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :price, presence: true
end
