class CreateRectables < ActiveRecord::Migration[5.1]
  def change
    create_table :rectables do |t|
      t.integer :site_id
      t.integer :number_chillers

      t.timestamps
    end
  end
end
