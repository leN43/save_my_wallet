class CitiesController < ApplicationController
  before_action :set_city, only: [:show, :edit, :update, :destroy]

  def show
  end

  def edit
  end

  def update
    if @city.update(city_params)

    else
      render :edit
    end
  end

  def destroy
    @city.destroy
  end

  private

  def set_city
    @city = City.find(params[:id])
  end

  def city_params
    params.require(:city).permit(:name, :user_id)
  end
end
