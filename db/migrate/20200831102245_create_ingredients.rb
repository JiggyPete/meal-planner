class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.timestamps null: false
      t.integer :recipe_id,  null: false
      t.string :food_type
      t.integer :quantity, null: false
      t.string :name, null: false
    end
  end
end
