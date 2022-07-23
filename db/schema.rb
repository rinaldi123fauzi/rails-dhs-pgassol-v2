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

ActiveRecord::Schema.define(version: 20200501085744) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", primary_key: "brand_id", id: :integer, default: -> { "nextval('brands_id_seq'::regclass)" }, force: :cascade do |t|
    t.string   "name_brand"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "brochures", primary_key: "brochure_id", id: :integer, default: -> { "nextval('brochures_id_seq'::regclass)" }, force: :cascade do |t|
    t.string   "brochure_title"
    t.string   "brochure_path"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "countries", primary_key: "country_id", id: :integer, default: -> { "nextval('countries_id_seq'::regclass)" }, force: :cascade do |t|
    t.string   "country_code"
    t.string   "country_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "currencies", force: :cascade do |t|
    t.string   "current_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "deliveries", primary_key: "delivery_id", id: :integer, default: -> { "nextval('deliveries_id_seq'::regclass)" }, force: :cascade do |t|
    t.string   "delivery_place"
    t.string   "delivery_inconterm"
    t.date     "delivery_date"
    t.integer  "delivery_vat"
    t.string   "delivery_term_payment"
    t.string   "delivery_note"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "disiplines", force: :cascade do |t|
    t.string   "name"
    t.integer  "vendor_id"
    t.string   "category"
    t.integer  "parent_id"
    t.integer  "in_order"
    t.string   "logo"
    t.string   "side_logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "indonesia_cities", force: :cascade do |t|
    t.integer  "province_id"
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "indonesia_districts", force: :cascade do |t|
    t.integer  "city_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "indonesia_provinces", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "indonesia_villages", force: :cascade do |t|
    t.integer  "district_id"
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "price_letters", primary_key: "price_letter_id", id: :integer, default: -> { "nextval('price_letters_id_seq'::regclass)" }, force: :cascade do |t|
    t.string   "price_letter_title"
    t.string   "price_letter_path"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "references", primary_key: "reference_id", id: :integer, default: -> { "nextval('references_id_seq'::regclass)" }, force: :cascade do |t|
    t.string   "reference_name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "role_assignments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_role_assignments_on_role_id", using: :btree
    t.index ["user_id"], name: "index_role_assignments_on_user_id", using: :btree
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name",        null: false
    t.text     "permissions"
    t.string   "type",        null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "units", primary_key: "unit_id", id: :integer, default: -> { "nextval('units_id_seq'::regclass)" }, force: :cascade do |t|
    t.string   "unit_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "vendors", force: :cascade do |t|
    t.string   "name"
    t.integer  "country_id"
    t.string   "business_category"
    t.string   "address"
    t.string   "website"
    t.string   "email"
    t.string   "phone_number"
    t.string   "pic1"
    t.string   "position1"
    t.string   "email1"
    t.string   "phone1"
    t.string   "pic2"
    t.string   "position2"
    t.string   "email2"
    t.string   "phone2"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_foreign_key "disiplines", "vendors", name: "vendors"
  add_foreign_key "indonesia_cities", "indonesia_provinces", column: "province_id", name: "indonesia_provinces"
  add_foreign_key "indonesia_districts", "indonesia_cities", column: "city_id", name: "indonesia_cities"
  add_foreign_key "indonesia_villages", "indonesia_districts", column: "district_id", name: "indonesia_districts"
  add_foreign_key "role_assignments", "roles"
  add_foreign_key "role_assignments", "users"
  add_foreign_key "vendors", "countries", primary_key: "country_id", name: "countries"
end
