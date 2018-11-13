class Order < ApplicationRecord
  belongs_to :orderstatus

  has_many :userorders
  has_many :users, through: :userorders
  accepts_nested_attributes_for :userorders, allow_destroy: true
  

  has_many :productorders
  has_many :products, through: :productorders

  validates :productprice, presence: true
  # validates :quantity, numericality: { only_integer: true }
  # validates :total, numericality: { only_integer: true }
  validates :appliedtax, presence: true
  validates :sentaddress, presence: true
end
