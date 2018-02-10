class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :room_name
      t.text :room_type
      t.integer :room_number
      t.decimal :room_price

      t.timestamps
    end
  end
end
