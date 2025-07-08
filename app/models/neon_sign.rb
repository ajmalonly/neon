class NeonSign < ApplicationRecord
    belongs_to :user, optional: true
    validates :text, presence: true
    validates :price, numericality: { greater_than: 0 }

    before_save :calculate_price

    def calculate_price
        base_price = 20  # Base price in your currency
        size_multiplier = size * 0.5  # Price increases with size
        font_multiplier = font == "Pacifico" ? 1.2 : 1.0  # Adjust based on font

        self.price = (base_price + size_multiplier) * font_multiplier
    end
end
