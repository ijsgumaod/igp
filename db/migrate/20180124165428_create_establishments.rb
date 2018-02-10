class CreateEstablishments < ActiveRecord::Migration[5.1]
  def change
    create_table :establishments do |t|
      t.string :estab_name
      t.string :estab_type

      t.timestamps
    end
  end
end
