class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|

      t.timestamps null: false
      t.string :name, null: false
      t.string :url, null: false
      t.string :picture_url, null: false
      t.text :instructions, null: false
    end
  end
end
