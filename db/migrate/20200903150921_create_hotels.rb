class CreateHotels < ActiveRecord::Migration[6.0]
  def change
    create_table :hotels do |t|
      t.string :name     ,null: false
      t.string :location ,null: false
      t.text :details    ,null: false
      t.integer :price   ,null: false
      t.integer :room    ,null: false
      t.float :latitude  ,null: false
      t.float :longitude ,null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
