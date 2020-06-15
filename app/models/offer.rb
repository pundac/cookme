class Offer < ApplicationRecord
  belongs_to :user
  belongs_to :category
  validates :title, presence :true, uniqueness: true
  validates :description, presence :true
  validates :price, presence :true
end
