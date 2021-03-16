class AddRecipeIdToIngredients < ActiveRecord::Migration[6.1]
  def change
    add_column :ingredients, :recipe_id, :integer
  end
end
