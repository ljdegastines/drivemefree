class MotorcyclesController < ApplicationController
  def index
    @motorcycles = Motorcycle.all
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
    @motorcycle = Motorcycle.find(params[:id])
  end

  def update
    @motorcycle = Motorcycle.find(params[:id])

    @motorcycle.update(motorcycle_params)

    redirect_to motorcycle_path(@motorcycle)
  end

  def destroy
  end

  private

  def motorcycle_params
    params.require(:motorcycle).permit(:manufacturer, :model, :style, :production_year, :engine_size, :engine_type, :horsepower, :license_plate, :description, :pickup_address, :longitude, :latitude, :autonomy_km)
  end
end
