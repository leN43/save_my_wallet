class ExpensesController < ApplicationController
  before_action :cors_set_access_control_headers
  before_action :set_expense, only: %i[show edit update destroy]
  before_action :index, only: [:json_expenses]

  def index
    @expenses = Expense.all
    if params[:filter]
      @expenses = Expense.select { |e| e.expense_date.month == params[:filter][:month].to_i }
    end
  end

  def json_expenses
    render json: @expenses
  end

  def show
    @expense = Expense.find(params[:id])
  end

  def new
    @expense = Expense.new
  end

  def edit; end

  def create
    @expense = Expense.new(expense_params)
    @expense.user = current_user
    @expense.building = Building.find_by(category: @expense.category)
    if @expense.save
      respond_to do |format|
        format.html { redirect_to expenses_path, notice: 'Expense was successfully created.' }
        format.turbo_stream
      end
      building_level(@expense.building, @expense.user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @expense.update(expense_params)
      redirect_to expense_path(@expense), status: :see_other

    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_expense
    @expense = Expense.find(params[:id])
  end

  def expense_params
    params.require(:expense).permit(:title, :amount, :category, :description, :expense_date)
  end

  def building_level(building, user)
    threshold = { '1' => 100, '2' => 500, '3' => 1000 }

    user_expenses_by_category_and_building = Expense.where(user_id: user.id).select(:building_id, :category, :amount)
    expenses_by_category = user_expenses_by_category_and_building.group_by(&:category).transform_values { |v| v.sum(&:amount) }
    case expenses_by_category[building.category]
    when threshold['1']..threshold['2']
      key = '1'
    when threshold['2']..threshold['3']
      key = '2'
    when threshold['3']..Float::INFINITY
      key = '3'
    end
    id_new_building = Building.where(category: building.category, level: key).first.id
    Expense.where(category: building.category, user_id: user.id).update_all(building_id: id_new_building)
  end

  private
  def cors_set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
  end
end
