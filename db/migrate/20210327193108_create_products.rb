class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :story
      t.string :island
      t.string :info

      t.timestamps
    end
  end
end
