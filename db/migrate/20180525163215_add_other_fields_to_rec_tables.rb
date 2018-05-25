class AddOtherFieldsToRecTables < ActiveRecord::Migration[5.1]
  def change
  	add_column :rectables, :staging_order, :integer, array: true, default:'{}'
  	add_column :rectables, :staging_table, :integer, array: true, default:'{}'
  end
end
