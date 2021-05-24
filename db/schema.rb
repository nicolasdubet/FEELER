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

ActiveRecord::Schema.define(version: 2021_05_24_151257) do



  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.string "domain"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "brands", force: :cascade do |t|
    t.string "pseudo"
    t.string "first_name"
    t.string "last_name"
    t.string "brand_name"
    t.integer "size"
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end


  create_table "campaigns", force: :cascade do |t|
    t.string "name"
    t.text "brief"
    t.string "country_code"
    t.bigint "brand_id", null: false
    t.bigint "activity_id", null: false
    t.string "language"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["activity_id"], name: "index_campaigns_on_activity_id"
    t.index ["brand_id"], name: "index_campaigns_on_brand_id"
  end

  add_foreign_key "campaigns", "activities"
  add_foreign_key "campaigns", "brands"

  create_table "influencers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "pseudo"
    t.integer "numberoffollower"
    t.string "caracteristic"
    t.integer "age"
    t.string "language"
    t.bigint "activity_id", null: false
    t.string "sex"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["activity_id"], name: "index_influencers_on_activity_id"
  end

  add_foreign_key "influencers", "activities"

end
