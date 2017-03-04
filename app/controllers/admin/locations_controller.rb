class Admin::LocationsController < ApplicationController
  layout "admin"

  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)

    if @location.save
      redirect_to admin_locations_path
    else
      render :new
    end
  end

  def edit
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])
    if @location.update(product_params)
      redirect_to admin_locations_path
    else
      render :edit
    end
  end

  private

  def location_params
    params.require(:location).permit(:address, :description, :latitude, :longitude)
  end
end
