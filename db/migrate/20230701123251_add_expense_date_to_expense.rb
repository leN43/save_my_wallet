class AddExpenseDateToExpense < ActiveRecord::Migration[7.0]
  def change
    add_column :expenses, :expense_date, :datetime
  end
end
