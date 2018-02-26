class RemoveRoomIdFromReservation < ActiveRecord::Migration[5.1]
  def change
    remove_column :reservations, :room_id, :integer
  end
end
