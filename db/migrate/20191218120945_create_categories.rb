class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :prop_type

      t.timestamps
    end
  end
end
