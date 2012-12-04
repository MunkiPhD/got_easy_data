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

ActiveRecord::Schema.define(:version => 20121204041121) do

  create_table "characters", :force => true do |t|
    t.date     "dob",                          :null => false
    t.boolean  "is_male",    :default => true
    t.string   "email",                        :null => false
    t.string   "title"
    t.string   "nickname"
    t.integer  "house_id",                     :null => false
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.string   "first_name", :default => "",   :null => false
    t.string   "last_name",  :default => "",   :null => false
    t.integer  "order_id"
  end

  add_index "characters", ["first_name"], :name => "index_characters_on_first_name"
  add_index "characters", ["last_name"], :name => "index_characters_on_last_name"

  create_table "houses", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "motto"
    t.string   "sigil",      :null => false
    t.string   "seat"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "orders", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "motto"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
