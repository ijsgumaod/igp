class RoomStatusChangeColumnType < ActiveRecord::Migration[5.1]
  def change
    change_column :rooms, :room_status, :integer
  end
end
