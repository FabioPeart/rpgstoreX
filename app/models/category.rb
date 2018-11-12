class Category < ApplicationRecord
    has_many :products

    validates :name, presence: true, uniqueness: true

    def display_category
        "Product##{self.id} - Category: #{category.name}"    
    end
end
