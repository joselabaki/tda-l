class AddIslandNameToProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :island_name, :string
  end
end
