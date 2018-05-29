class AddInvalidCombosFromInvalidCombos < ActiveRecord::Migration[5.1]
  def change
    add_column :invalid_combos, :invalid_entries, :integer, array: true, default:'{}'
  end
end
