class PhotosController < ApplicationController
  before_action :get_motorcycle, only: [:create, :new]

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.motorcycle = @motorcycle
    if @photo.save
      redirect_to motorcycle_path(@motorcycle)
    else
      render :new
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:picture, :motorcycle_id)
  end

  def get_motorcycle
    @motorcycle = Motorcycle.find(params[:motorcycle_id])
  end
end
