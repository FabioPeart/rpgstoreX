# frozen_string_literal: true

class Userorder < ApplicationRecord
  belongs_to :user
  belongs_to :order
end
