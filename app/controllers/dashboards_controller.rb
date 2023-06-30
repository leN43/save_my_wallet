class DashboardsController < ApplicationController
  before_action :set_user, only: %i[dashboard]
  before_action :set_expenses, only: %i[dashboard]

  def dashboard; end

  private

  def set_user
    @user = current_user
  end

  def set_expenses
    @expenses = Expense.where(user_id: current_user.id)
  end
end
