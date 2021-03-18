class RecipeSerializer
    include FastJsonapi::ObjectSerializer
    attributes :name, :description, :category, :img_url
end