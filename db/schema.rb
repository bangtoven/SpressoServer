# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130909055051) do

  create_table "cafes", :force => true do |t|
    t.string   "name"
    t.string   "location"
    t.boolean  "seat"
    t.boolean  "wifi"
    t.string   "discount"
    t.string   "open_hour"
    t.string   "open_hour_fri"
    t.string   "open_hour_wknd"
    t.string   "open_hour_etc"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "menus", :force => true do |t|
    t.integer  "cafe_id"
    t.string   "name"
    t.string   "price"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "menus", ["cafe_id"], :name => "index_menus_on_cafe_id"

end
