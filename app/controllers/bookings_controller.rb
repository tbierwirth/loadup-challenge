class BookingsController < ApplicationController
    def new
      @booking = Booking.new
    end
  
    def create
      @booking = Booking.new(booking_params)
      if @booking.save
        flash[:notice] = 'Booking Created!'
        redirect_to root_path
      else
        render :new
      end
    end
  
    def index
      @bookings = Booking.all
    end
  
    private
  
    def booking_params
      params.require(:booking).permit(:first_name, :last_name, :animal_name, :animal_type, :hours_requested, :date_of_service)
    end
  end