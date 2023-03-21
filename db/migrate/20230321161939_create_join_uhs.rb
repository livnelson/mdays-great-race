class CreateJoinUhs < ActiveRecord::Migration[7.0]
  def change
    create_table :join_uhs do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :hunt, null: false, foreign_key: true
      t.string :user_answer

      t.timestamps
    end
  end
end
