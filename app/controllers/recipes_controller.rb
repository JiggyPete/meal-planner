class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new recipe_params
    if @recipe.save
      flash[:notice] = "Successfully created recipe"
      redirect_to recipe_path(@recipe)
    else
      flash[:errors] = @recipe.errors.full_messages
      render :new
    end
  end

  def show
    @recipe = Recipe.find params[:id]
  end

  def edit
    @recipe = Recipe.find params[:id]
  end

  def update
    @recipe = Recipe.find params[:id]

    if @recipe.update recipe_params
      flash[:notice] = "Successfully updated recipe"
      redirect_to recipe_path(@recipe)
    else
      flash[:errors] = @recipe.errors.full_messages
      render :edit
    end
  end

  private

  def recipe_params
    params.require(:recipe).
      permit(
        :name,
        :picture_url,
        :url, :instructions,
        ingredients_attributes: [:id, :food_type, :quantity, :name])
  end

end
