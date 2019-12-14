class CreateUserInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :user_infos do |t|
      t.belongs_to :user, foreign_key: true
      t.string :first_name, null: false
      t.String :last_name, null: false
      t.string :phone, null: false
      t.date :dob, null: false

      t.timestamps
    end
  end
end
