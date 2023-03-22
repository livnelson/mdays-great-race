class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :on_hunt_number
      t.string :image
      t.string :password_digest
      t.datetime :ttc
      t.datetime :start_time

      t.timestamps
    end
  end
end
