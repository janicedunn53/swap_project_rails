class CreateNeighborhoods < ActiveRecord::Migration
  def change
    create_table :neighborhoods do |t|
      t.column :name, :string
      t.column :quadrant, :string

      t.timestamps
    end
  end
end
