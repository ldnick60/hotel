class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :type
      t.integer :number_total
      t.integer :number_avaliable

      t.timestamps
    end
  end
end
