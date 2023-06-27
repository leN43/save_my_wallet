class AddUserAndChallengeToUserGame < ActiveRecord::Migration[7.0]
  def change
    add_reference :user_games, :user, null: false, foreign_key: true
    add_reference :user_games, :challenge, null: false, foreign_key: true
  end
end
