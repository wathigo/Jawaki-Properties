class Likes < ActiveRecord::Migration[5.2]
  def change
    def change
      create_table :likes do |t|
        t.references :user, foreign_key: true
        t.references :property, foreign_key: true

        t.timestamps
      end
    end
  end
end
