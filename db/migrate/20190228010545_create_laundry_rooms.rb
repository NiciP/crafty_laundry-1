class CreateLaundryRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :laundry_rooms do |t|
      t.text :schedule
      t.integer :capacity

      t.timestamps
    end
  end
end
