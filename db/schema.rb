# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_03_23_044605) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "environment_flags", force: :cascade do |t|
    t.bigint "environment_id", null: false
    t.bigint "flag_id", null: false
    t.boolean "value", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["environment_id"], name: "index_environment_flags_on_environment_id"
    t.index ["flag_id"], name: "index_environment_flags_on_flag_id"
  end

  create_table "environments", force: :cascade do |t|
    t.string "name"
    t.string "key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["key"], name: "index_environments_on_key", unique: true
    t.index ["name"], name: "index_environments_on_name", unique: true
  end

  create_table "flags", force: :cascade do |t|
    t.string "name"
    t.string "key"
    t.text "description"
    t.boolean "default_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["key"], name: "index_flags_on_key", unique: true
    t.index ["name"], name: "index_flags_on_name", unique: true
  end

  add_foreign_key "environment_flags", "environments"
  add_foreign_key "environment_flags", "flags"
end
