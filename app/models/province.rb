class Province < ApplicationRecord
    has_many :users

    validates :name, presence: true, uniqueness: true
    validates :initials, presence: true, uniqueness: true
    validates :gst, presence: true
    validates :pst, presence: true
    validates :hst, presence: true
    validates :total_rate, presence: true

end
