class AddRoomidToReservation < ActiveRecord::Migration[5.1]
  def change
    add_column :reservations, :room_id, :integer
  end
end
