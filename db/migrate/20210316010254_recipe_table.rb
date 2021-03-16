class RecipeTable < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.belongs_to :category
      t.has_many :ingredients
      t.timestamps
    end
  end
end
