class Booking < ApplicationRecord
  belongs_to :offer
  belongs_to :user
  has_one :review
  validates :date, presence: true
  validates :accepted, is_boolean: false
end
