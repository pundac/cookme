class User < ApplicationRecord
 has_many :bookings
 has_many :reviews, through: :bookings
 has_many :offers
 has_many :categories, through: :offers
 validates :localisation, presence :true  
 validates :user_name, presence :true 
end
