class CreateAppliances < ActiveRecord::Migration[5.2]
  def change
    create_table :appliances do |t|
      t.string :brand
      t.string :appliance_type
      t.string :price

      t.timestamps
    end
  end
end
