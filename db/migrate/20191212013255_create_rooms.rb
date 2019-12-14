class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :room_type,          null: false
      t.integer :number_total,      null: false
      t.integer :number_avaliable,  null: false

      t.timestamps
    end
  end
end
