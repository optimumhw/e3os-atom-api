class CreateInvalidCombos < ActiveRecord::Migration[5.1]
  def change
    create_table :invalid_combos do |t|
      t.integer :site_id
      t.integer :number_chillers
      t.integer :invalid_combos

      t.timestamps
    end
  end
end
