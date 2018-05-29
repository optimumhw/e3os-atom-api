class RemoveInvalidCombosFromInvalidCombos < ActiveRecord::Migration[5.1]
  def change
    remove_column :invalid_combos, :invalid_combos, :string
  end
end
