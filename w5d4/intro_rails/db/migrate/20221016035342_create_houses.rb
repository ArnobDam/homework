class CreateHouses < ActiveRecord::Migration[7.0]
  def change
    create_table :houses do |t|
      t.string :address, null: false, index: { unique: true }
      # t.index :address, unique:true
      t.string :color, null: false

      t.timestamps
    end
  end
end
