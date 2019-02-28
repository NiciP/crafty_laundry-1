class AddDefaultToColumn < ActiveRecord::Migration[5.2]
  def change
    change_column_default :laundry_rooms, :capacity, 1
  end
end
