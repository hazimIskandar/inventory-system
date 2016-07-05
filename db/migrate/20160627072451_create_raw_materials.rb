class CreateRawMaterials < ActiveRecord::Migration
  def change
    create_table :raw_materials do |t|
      t.string :name
      t.decimal :quantity
      t.string :unit
      t.decimal :per_unit_price
      t.string :supplier
      	

      t.references :perniagaan, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
