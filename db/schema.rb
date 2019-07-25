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

ActiveRecord::Schema.define(version: 2019_07_25_194358) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "colors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "url"
    t.string "swatch"
    t.string "backURL"
  end

  create_table "darkprices", force: :cascade do |t|
    t.integer "colors"
    t.decimal "one"
    t.decimal "two"
    t.decimal "three"
    t.decimal "four"
    t.decimal "five"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "style"
    t.integer "price"
    t.string "size"
    t.string "color"
    t.string "brand"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "logos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "prices", force: :cascade do |t|
    t.integer "colors"
    t.decimal "one"
    t.decimal "two"
    t.decimal "three"
    t.decimal "four"
    t.decimal "five"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shirts", force: :cascade do |t|
    t.string "name"
    t.string "project"
    t.string "email"
    t.string "email2"
    t.string "email3"
    t.string "email4"
    t.string "email5"
    t.string "blob"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
