class MotorcyclesController < ApplicationController
  def index
    @motorcycle = Motorcycle.all
  end

  def show
    @motorcycle = Motorcycle.find(params[:id])
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
  end

  def destroy
  end

  private

  def motorcycle_params
    params.require(:motorcycle).permit(:manufacturer, :model, :type, :production_year, :engine_size, :engine_type, :horsepower, :licence_plate, :descritpion, :pickup_address, :longitude, :latitude, :autonomy_km)
  end
end
