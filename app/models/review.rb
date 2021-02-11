class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates_numericality_of :rating
  validates_inclusion_of :rating, in: 0..5
end
