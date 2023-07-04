class AddPhotoIdToBuildings < ActiveRecord::Migration[7.0]
  def change
    add_column :buildings, :photo_id, :string
  end
end
