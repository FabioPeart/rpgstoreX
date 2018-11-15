# frozen_string_literal: true

class Page < ApplicationRecord
  validates :about, presence: true
  validates :contact_name, presence: true
  validates :contact_email, presence: true
end
