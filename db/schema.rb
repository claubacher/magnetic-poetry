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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20131119075724) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "inclusions", force: true do |t|
    t.integer  "poem_id"
    t.integer  "magnet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "fridge_top"
    t.integer  "fridge_left"
  end

  add_index "inclusions", ["magnet_id"], name: "index_inclusions_on_magnet_id", using: :btree
  add_index "inclusions", ["poem_id"], name: "index_inclusions_on_poem_id", using: :btree

  create_table "magnets", force: true do |t|
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "poems", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
