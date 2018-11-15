# frozen_string_literal: true

class User < ApplicationRecord
  belongs_to :province
  belongs_to :usertype

  has_many :userorders
  has_many :orders, through: :userorders

  validates :name, presence: true
  validates :age, numericality: { only_integer: true }
  validates :address, presence: true
  validates :city, presence: true
  validates :postalcode, presence: true

  # def display_type
  #   "User##{self.id} - User Type: #{user_type.type_description}"
  # end
end
