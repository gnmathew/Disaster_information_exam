class Category < ApplicationRecord
  validates :name, presence: true


  has_many :posts, through: :post_category_ships
  has_many :post_category_ships, dependent: :restrict_with_exception
end
