# frozen_string_literal: true

class Product < ApplicationRecord
  mount_uploader :picture, ImageUploader
  belongs_to :category

  has_many :productorders
  has_many :orders, through: :productorders

  validates :name, presence: true
  validates :description, presence: true
  # validates :price, numericality: { only_integer: true }

  def display_category
    "Product##{id} - Category: #{category.name}"
  end
end
