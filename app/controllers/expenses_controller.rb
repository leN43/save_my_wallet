class ExpensesController < ApplicationController
  before_action :set_expense, only: %i[show edit update destroy]

  def index
    @expenses = Expense.all
  end

  def show
    @expense = Expense.find(params[:id])
  end

  def new; end

  def edit; end

  def create
    @expense = Expense.new(expense_params)
    if @expense.save
      redirect_to expenses_path, status: :see_other
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
    params.require(:expense).permit(:title, :amount, :category)
  end
end
