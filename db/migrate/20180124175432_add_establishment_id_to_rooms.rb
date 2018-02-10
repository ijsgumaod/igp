class AddEstablishmentIdToRooms < ActiveRecord::Migration[5.1]
  def change
    add_column :rooms, :establishment_id, :integer
  end
end
