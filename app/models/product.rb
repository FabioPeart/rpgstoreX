class Product < ApplicationRecord
  belongs_to :category, optional: true

  has_many :productorders
  has_many :orders, through: :productorders

  validates :name, presence: true
  validates :description, presence: true  
  # validates :price, numericality: { only_integer: true }

  
  def display_category
    "Product##{self.id} - Category: #{category.name}"    
  end
end
