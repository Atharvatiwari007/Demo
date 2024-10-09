class BookingsController < ApplicationController
  # before_action :validity_params, only: [ :new ]
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      flash[:notice] = "Thank you, #{@booking.full_name}! You have successfully booked a #{@booking.membership_duration}-month membership."
      render :show
    else
      flash.now[:alert] = "There was an error with your booking. Please try again."
      render :new
    end
  end
  private
  def booking_params
    params.require(:booking).permit(:membership_duration, :full_name, :email, :start_date, :end_date, :contact)
  end
end
