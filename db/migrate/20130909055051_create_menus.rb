class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.references :cafe
      t.string :name
      t.string :price

      t.timestamps
    end
    add_index :menus, :cafe_id
  end
end
