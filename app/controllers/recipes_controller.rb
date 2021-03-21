class RecipesController < ApplicationController

    def index
        recipes = Recipe.all
        render json: RecipeSerializer.new(recipes)
    end

    def create
        newRecipe = Recipe.new(recipe_params)
        newRecipe.category_id = Category.find_by(name: params['category_id']).id

        if newRecipe.save
            render json: RecipeSerializer.new(newRecipe)
        else
            render json: {error: "could not save new recipe"}
        end
    end

    def show
        recipe = Recipe.find_by(id: params["id"])
        render json: RecipeSerializer.new(recipe)
    end

    def destroy
        recipe = Recipe.find_by(id: params["id"])
        recipe.destroy
        recipes = Recipe.all
        render json: RecipeSerializer.new(recipes)
    end

    private

    def recipe_params
        params.require(:recipe).permit(:name, :img_url, :description, :category_id)
    end

end