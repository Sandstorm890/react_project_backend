class RecipeSerializer
    include FastJsonapi::ObjectSerializer
    attributes :name, :description, :category
end