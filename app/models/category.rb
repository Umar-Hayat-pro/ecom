class Category < ApplicationRecord
  has_many :products
  has_one_attached :image do |a|
    a.variant :thumb, resize_to_limit: [50, 50]
  end
  validates :name, presence: true
  validates :description, presence: true
end
