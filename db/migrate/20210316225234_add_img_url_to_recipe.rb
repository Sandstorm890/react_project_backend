class AddImgUrlToRecipe < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :img_url, :string
  end
end
