# frozen_string_literal: true

class Productorder < ApplicationRecord
  belongs_to :order
  belongs_to :product
end
