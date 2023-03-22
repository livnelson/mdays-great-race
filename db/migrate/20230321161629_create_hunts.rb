class CreateHunts < ActiveRecord::Migration[7.0]
  def change
    create_table :hunts do |t|
      t.string :clue
      t.string :image
      t.string :the_answer

      t.timestamps
    end
  end
end
