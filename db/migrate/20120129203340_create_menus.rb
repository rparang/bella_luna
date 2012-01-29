class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :name
      t.string :category
      t.text :description
      t.decimal :price_small
      t.decimal :price_large

      t.timestamps
    end
  end
end
