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

ActiveRecord::Schema.define(:version => 20110310201353) do

  create_table "things", :force => true do |t|
    t.string   "ref"
    t.text     "name"
    t.text     "title"
    t.text     "maker"
    t.string   "date_made"
    t.string   "place_made"
    t.text     "materials"
    t.string   "measurements"
    t.text     "description"
    t.string   "whole_part"
    t.string   "collection"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "type_of_thing_id"
    t.integer  "no_idea_count"
  end

  add_index "things", ["ref"], :name => "index_things_on_ref", :unique => true

  create_table "types_of_thing", :force => true do |t|
    t.string   "name"
    t.integer  "things_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "types_of_thing", ["name"], :name => "index_types_of_thing_on_name", :unique => true

end
