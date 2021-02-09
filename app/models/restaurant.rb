class Restaurant < ApplicationRecord
  has_many :reviews, class_name: "review", foreign_key: "reference_id"
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates { :category ["chinese", "italian", "japanese", "french", "belgian"] }
end
