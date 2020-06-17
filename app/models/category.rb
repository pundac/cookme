class Category < ApplicationRecord
  has_many :offers
  validates :name, presence: true, uniqueness: true
  has_one_attached :photo
end
