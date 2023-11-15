class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true, numericality: { in: 0..5 }
  validates :rating, presence: true, numericality: { only_integer: true }
end
