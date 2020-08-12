class Restaurant < ApplicationRecord
  TYPES = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  validates :category, inclusion: { in: Restaurant::TYPES }
  validates :name, :address, :category, presence: true
  has_many :reviews, dependent: :destroy
end

