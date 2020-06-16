class Review < ApplicationRecord
    validates :rating, presence :true
    validates :comment, presence :true
end
