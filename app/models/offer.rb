class Offer < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :bookings
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :price, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_one_attached :photo
  validates :photo, presence: true
end
