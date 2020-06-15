class Booking < ApplicationRecord
  belongs_to :offer
  belongs_to :user
  belongs_to :review
  validates :date, presence :true
  
end
