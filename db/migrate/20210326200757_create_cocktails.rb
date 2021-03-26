class CreateCocktails < ActiveRecord::Migration[6.1]
  def change
    create_table :cocktails do |t|
      t.string :name
      t.string :creator
      t.string :city
      t.string :ingredient
      t.string :garnish
      t.string :serving

      t.timestamps
    end
  end
end
