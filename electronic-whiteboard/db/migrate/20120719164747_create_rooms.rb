class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :room_number

      t.timestamps
    end
  end
end
