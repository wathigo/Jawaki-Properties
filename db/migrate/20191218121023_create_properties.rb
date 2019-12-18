class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.references :categories
      t.string :name
      t.string :address
      t.integer :price

      t.timestamps
    end
  end
end
