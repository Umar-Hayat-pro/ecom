class Product < ApplicationRecord
  belongs_to :category
  has_many_attached :images do |i|
    i.variant :thumb, resize_to_limit: [50, 50]
  end

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :active, inclusion: { in: [true, false] }
end
