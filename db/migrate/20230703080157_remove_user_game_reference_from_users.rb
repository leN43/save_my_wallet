class RemoveUserGameReferenceFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_reference :users, :user_game, null: false, foreign_key: true
  end
end
