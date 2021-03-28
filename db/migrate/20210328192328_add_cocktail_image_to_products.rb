class AddCocktailImageToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :cocktail_image, :string
  end
end
