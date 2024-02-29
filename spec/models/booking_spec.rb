require 'rails_helper'

RSpec.describe Booking, type: :model do
  it 'is valid with valid attributes' do
    booking = Booking.new(first_name: 'Tyler', last_name: 'Bierwirth', animal_name: 'Luna', animal_type: 'Cat', hours_requested: 5, date_of_service: Date.today)
    expect(booking).to be_valid
  end

  it 'is not valid with unsupported pet type' do
    booking = Booking.new(animal_type: "Fish")
    expect(booking).to_not be_valid
  end

  it 'is not valid with unsupported hours requests' do
    booking = Booking.new(hours_requested: 9001)
    expect(booking).to_not be_valid
  end

  describe "#calculate_price" do
    it 'calculates the correct price for dogs' do
        booking = Booking.new(animal_type: 'Dog', hours_requested: 4)
        expect(booking.calculate_price).to eq(60)
    end

    it 'calculates the correct price for cats' do
        booking = Booking.new(animal_type: 'Cat', hours_requested: 8)
        expect(booking.calculate_price).to eq(60)
    end
  end
end