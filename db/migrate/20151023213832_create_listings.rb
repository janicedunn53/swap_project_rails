class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.column :name, :string
      t.column :description, :string
      t.column :image, :string

      t.timestamps
    end
  end
end
