class CreateLetters < ActiveRecord::Migration[5.1]
  def change
    create_table :letters do |t|
      t.string :name
      t.string :instituition
      t.string :letter

      t.timestamps
    end
  end
end
