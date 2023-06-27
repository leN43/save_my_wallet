class ChangeColumntoUser < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :user_game_id, :bigint, null: true
    change_column :users, :city_id, :bigint, null: true
  end
end
