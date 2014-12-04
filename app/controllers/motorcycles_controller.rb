class MotorcyclesController < ApplicationController
  before_action :get_motorcycle, only: [:show, :edit, :update, :destroy]

  def index
    @motorcycles = Motorcycle.all
  end

  def show
    @booking = Booking.new
  end

  def new
    @motorcycle = Motorcycle.new
  end

  def create
    @motorcycle = Motorcycle.new(motorcycle_params)
    if @motorcycle.save
      redirect_to motorcycle_path(@motorcycle)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @motorcycle.update(motorcycle_params)

    redirect_to motorcycle_path(@motorcycle)
  end

  def destroy
    @motorcycle.destroy

    redirect_to motorcycles_path
  end

  def search
    @motorcycles = Motorcycle.where(search_params.reject{|_, v| v.blank?})
  end

  private

  def get_motorcycle
    @motorcycle = Motorcycle.find(params[:id])
  end

  def motorcycle_params
    params.require(:motorcycle).permit(:manufacturer, :model, :style, :production_year, :engine_size, :engine_type, :horsepower, :license_plate, :description, :pickup_address, :longitude, :latitude, :autonomy_km, :picture)
  end

  def search_params
    params.permit(:manufacturer, :model, :style, :production_year, :engine_size, :engine_type, :horsepower, :license_plate, :description, :pickup_address, :longitude, :latitude, :autonomy_km, :picture)
  end
end
