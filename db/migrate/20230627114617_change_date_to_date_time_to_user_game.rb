class ChangeDateToDateTimeToUserGame < ActiveRecord::Migration[7.0]
  def change
    change_column :user_games, :finished_at, :datetime
  end
end
