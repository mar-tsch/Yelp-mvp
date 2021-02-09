class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates { :rating [0..5] }
end
