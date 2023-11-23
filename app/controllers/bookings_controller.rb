class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
    @user = current_user
  end

  def new
    @activity = Activity.find(params[:activity_id])
    @booking = Booking.new
    @booking.activity_id = @activity.id
    @booking.user_id = current_user.id
  end

  def create
    @activity = Activity.find(params[:activity_id])
    @booking = Booking.new(booking_params)
    @booking.activity_id = @activity.id
    @booking.user_id = current_user.id
    if @booking.save
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :start_time)
  end
end
