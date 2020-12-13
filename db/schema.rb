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

ActiveRecord::Schema.define(version: 2020_12_13_052312) do

  create_table "animals", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "color"
    t.string "species"
    t.string "image"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_animals_on_user_id"
  end

  create_table "appointments", force: :cascade do |t|
    t.datetime "date"
    t.integer "animal_id", null: false
    t.integer "veterinarian_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["animal_id"], name: "index_appointments_on_animal_id"
    t.index ["veterinarian_id"], name: "index_appointments_on_veterinarian_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.integer "veterinarian_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["veterinarian_id"], name: "index_services_on_veterinarian_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "veterinarians", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "animals", "users"
  add_foreign_key "appointments", "animals"
  add_foreign_key "appointments", "veterinarians"
  add_foreign_key "services", "veterinarians"
end
