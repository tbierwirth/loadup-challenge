class Booking < ApplicationRecord
    validates :first_name, :last_name, :animal_name, :animal_type, :hours_requested, :date_of_service, presence: true
    validates :hours_requested, numericality: { greater_than_or_equal_to: 2, less_than_or_equal_to: 8 }
    validates :animal_type, inclusion: { in: %w[Dog Cat] }

    def calculate_price
        base_price = 20
        additional_charge = animal_type == 'Dog' ? 10 : 5
        base_price + (hours_requested * additional_charge)
    end
end
