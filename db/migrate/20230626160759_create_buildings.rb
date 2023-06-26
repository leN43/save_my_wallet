class CreateBuildings < ActiveRecord::Migration[7.0]
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :category
      t.integer :level

      t.timestamps
    end
  end
end
