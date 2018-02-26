class AddEstabIdToReservation < ActiveRecord::Migration[5.1]
  def change
    add_column :reservations, :estab_id, :integer
    add_column :reservations, :user_id, :integer
  end
end
