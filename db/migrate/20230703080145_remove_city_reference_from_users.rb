class RemoveCityReferenceFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_reference :users, :city, null: false, foreign_key: true
  end
end
