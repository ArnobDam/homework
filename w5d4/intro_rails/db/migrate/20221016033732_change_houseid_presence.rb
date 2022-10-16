class ChangeHouseidPresence < ActiveRecord::Migration[7.0]
  def change
    add_index :people, :house_id, unique: true
  end
end
