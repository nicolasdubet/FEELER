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

ActiveRecord::Schema.define(version: 2021_05_25_162307) do

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
    t.string "lastname"
    t.string "firsname"
    t.integer "size"
    t.string "brand_name"
    t.string "category"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_brands_on_user_id"
  end

  create_table "campaigns", force: :cascade do |t|
    t.string "name"
    t.text "brief"
    t.string "country_code"
    t.bigint "activity_id", null: false
    t.string "language"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "brand_id", null: false
    t.index ["activity_id"], name: "index_campaigns_on_activity_id"
    t.index ["brand_id"], name: "index_campaigns_on_brand_id"
  end

  create_table "influencers", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "pseudo"
    t.integer "number_of_followers"
    t.string "language"
    t.integer "age"
    t.string "sex"
    t.bigint "activity_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["activity_id"], name: "index_influencers_on_activity_id"
    t.index ["user_id"], name: "index_influencers_on_user_id"
  end

  create_table "matches", force: :cascade do |t|
    t.bigint "campaign_id", null: false
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "influencer_id", null: false
    t.index ["campaign_id"], name: "index_matches_on_campaign_id"
    t.index ["influencer_id"], name: "index_matches_on_influencer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "brands", "users"
  add_foreign_key "campaigns", "activities"
  add_foreign_key "campaigns", "brands"
  add_foreign_key "influencers", "activities"
  add_foreign_key "influencers", "users"
  add_foreign_key "matches", "campaigns"
  add_foreign_key "matches", "influencers"
end
