# frozen_string_literal: true

class Usertype < ApplicationRecord
  has_many :users

  validates :type_description, presence: true, uniqueness: true
end
