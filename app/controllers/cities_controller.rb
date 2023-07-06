class CitiesController < ApplicationController
  before_action :set_city, only: %i[index show edit update]
  before_action :set_expenses, only: %i[show user_expenses]

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

  def show
    @expenses.empty? ? @expenses = all_categories.each { |category| @expenses[category] = 0 } : @expenses
  end

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

  def set_expenses
    @total_category = {}
    @expenses = Expense.where(user_id: current_user.id)
    @expenses = @expenses.group_by(&:category).transform_values { |v| v.sum(&:amount) }
    threshold = { '1' => 100, '2' => 500, '3' => 1000 }
    @expenses.each do |category, _amount|
      case @expenses[category]
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
