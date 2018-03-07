class ReservationEstabChangeColumnType < ActiveRecord::Migration[5.1]
  def change
    remove_column :reservations, :estab_id, :integer
  end
end
