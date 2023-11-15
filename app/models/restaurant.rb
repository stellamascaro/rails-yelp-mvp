class Restaurant < ApplicationRecord
  LIST = ['chinese', 'italian', 'japanese', 'french', 'belgian']

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: LIST }
  has_many :reviews, dependent: :destroy
end
