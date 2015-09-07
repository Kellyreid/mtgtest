class CreateMetacards < ActiveRecord::Migration
  def change
    create_table :metacards do |t|
      t.string :name
      t.text :rules_text
      t.string :mana_cost
      t.string :converted_mana_cost
      t.integer :power
      t.integer :toughness
      t.integer :loyalty
      t.string :type_line

      t.timestamps null: false
    end
  end
end
