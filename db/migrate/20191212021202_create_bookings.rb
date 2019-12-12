class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :room, foreign_key: true
      t.date :date_in,    null: false
      t.date :date_out,   null: false

      t.timestamps
    end
  end
end
