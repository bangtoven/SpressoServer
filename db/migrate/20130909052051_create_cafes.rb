class CreateCafes < ActiveRecord::Migration
  def change
    create_table :cafes do |t|
      t.string :name
      t.string :location
      t.boolean :seat
      t.boolean :wifi
      t.string :discount
      t.string :open_hour
      t.string :open_hour_fri
      t.string :open_hour_wknd
      t.string :open_hour_etc

      t.timestamps
    end
  end
end
