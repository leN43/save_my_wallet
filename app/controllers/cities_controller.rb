class CitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]
  before_action :set_city, only: %i[index show edit update]
  before_action :check_expenses, only: %i[show set_expenses]
  before_action :set_expenses, only: %i[show]

  def index
    if @city.empty?
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

  def check_expenses
    @total_category = {}
    @expenses = Expense.where(user_id: current_user.id)
    @expenses = @expenses.group_by(&:category).transform_values { |v| v.sum(&:amount) }
    helpers.all_categories.each do |category|
      @expenses[category] = 0 unless @expenses[category]
    end
  end

  def set_expenses
    threshold = { '1' => 100, '2' => 500, '3' => 1000 }
    @expenses.each do |category, _amount|
      case @expenses[category]
      when 0..threshold['1']
        @total_category[category] = threshold['1']
      when threshold['1']..threshold['2']
        @total_category[category] = threshold['2']
      when threshold['2']..threshold['3']
        @total_category[category] = threshold['3']
      when threshold['3']..Float::INFINITY
        @total_category[category] = 10_000
      end
    end
  end

  def set_city
    if City.where(user_id: current_user).empty?
      @city = []
    else
      @city = City.includes(:user).where(user_id: current_user)
    end
  end

  def city_params
    params.require(:city).permit(:name, :user_id, :level)
  end
end
