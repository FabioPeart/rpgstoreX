class Orderstatus < ApplicationRecord
    has_many :orders

    validates :statusname, presence: true, uniqueness: true
end
