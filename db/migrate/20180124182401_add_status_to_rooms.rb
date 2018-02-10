class AddStatusToRooms < ActiveRecord::Migration[5.1]
  def change
    add_column :rooms, :room_status, :boolean
  end
end
