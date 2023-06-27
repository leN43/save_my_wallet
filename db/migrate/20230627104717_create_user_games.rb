class CreateUserGames < ActiveRecord::Migration[7.0]
  def change
    create_table :user_games do |t|
      t.boolean :status
      t.date :finished_at, null: true

      t.timestamps
    end
  end
end
