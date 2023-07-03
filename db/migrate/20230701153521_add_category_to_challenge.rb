class AddCategoryToChallenge < ActiveRecord::Migration[7.0]
  def change
    add_column :challenges, :category, :string
  end
end
