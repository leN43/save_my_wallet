class ExpensesController < ApplicationController
  before_action :set_expense, only: %i[show edit update destroy]

  def index
    @expenses = Expense.all
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
end
