class AddExpenseDescriptionToExpense < ActiveRecord::Migration[7.0]
  def change
    add_column :expenses, :description, :text
  end
end
