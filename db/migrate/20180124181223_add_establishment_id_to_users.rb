class AddEstablishmentIdToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :establishment_id, :integer
  end
end