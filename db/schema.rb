# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_29_210509) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adms", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lancamentos", force: :cascade do |t|
    t.string "music_name"
    t.string "artist"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "tags", default: [], array: true
    t.text "links", default: [], array: true
  end

  create_table "podcasts", force: :cascade do |t|
    t.text "link"
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "publis", force: :cascade do |t|
    t.string "tittle"
    t.text "thumb"
    t.string "author"
    t.text "content"
    t.text "img_ctt"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "tag", default: [], array: true
  end

  create_table "videos", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "link"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
