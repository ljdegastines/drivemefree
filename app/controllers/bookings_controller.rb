class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.total_price = (booking_params[:return_date].to_f - booking_params[:pickup_date].to_f) * @booking.motorcycle.price_per_day
    @booking.user_id = current_user.id
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def get_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:motorcycle_id, :pickup_date, :return_date)
  end
end
