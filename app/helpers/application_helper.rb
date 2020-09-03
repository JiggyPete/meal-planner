module ApplicationHelper
  def setup_recipe(recipe)
    10.times { recipe.ingredients.build }
    recipe
  end
end
