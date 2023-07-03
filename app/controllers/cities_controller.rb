class CitiesController < ApplicationController
  before_action :set_city, only: %i[index show edit update]

  def index
    if @city.nil?
      redirect_to new_city_path, status: :see_other
    else
      redirect_to city_path(@city), status: :see_other
    end
  end

  def new
    @city = City.new
  end

  def show; end

  def edit; end

  def update
    if @city.update(city_params)
      redirect_to city_path(@city), status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def create
    params[:city][:user_id] = current_user.id
    params[:city][:level] = 1
    @city = City.new(city_params)
    if @city.save
      redirect_to city_path(@city), status: :see_other

    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_city
    if City.where(user_id: current_user).nil?
      @city = nil
    else
      @city = City.includes(:user).where(user_id: current_user)
    end
  end

  def city_params
    params.require(:city).permit(:name, :user_id, :level)
  end
end
