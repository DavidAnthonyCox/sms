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

ActiveRecord::Schema.define(version: 20150528041800) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "activity_notes", force: true do |t|
    t.integer  "activity_type_id",   null: false
    t.integer  "activity_note_id"
    t.integer  "person_id"
    t.integer  "logging_person_id",  null: false
    t.integer  "organization_id"
    t.integer  "payor_id"
    t.integer  "course_provider_id"
    t.integer  "course_template_id"
    t.integer  "course_offering_id"
    t.integer  "system_id"
    t.text     "note",               null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sale_id"
  end

  add_index "activity_notes", ["activity_note_id"], name: "index_activity_notes_on_activity_note_id"
  add_index "activity_notes", ["activity_type_id"], name: "index_activity_notes_on_activity_type_id"
  add_index "activity_notes", ["course_offering_id"], name: "index_activity_notes_on_course_offering_id"
  add_index "activity_notes", ["course_provider_id"], name: "index_activity_notes_on_course_provider_id"
  add_index "activity_notes", ["course_template_id"], name: "index_activity_notes_on_course_template_id"
  add_index "activity_notes", ["organization_id"], name: "index_activity_notes_on_organization_id"
  add_index "activity_notes", ["payor_id"], name: "index_activity_notes_on_payor_id"
  add_index "activity_notes", ["person_id"], name: "index_activity_notes_on_person_id"
  add_index "activity_notes", ["sale_id"], name: "index_activity_notes_on_sale_id"
  add_index "activity_notes", ["system_id"], name: "index_activity_notes_on_system_id"

  create_table "activity_types", force: true do |t|
    t.string   "tag",         null: false
    t.text     "description", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "addresses", force: true do |t|
    t.integer  "contact_category_id", null: false
    t.integer  "organization_id"
    t.integer  "person_id"
    t.integer  "state_id"
    t.integer  "location_id"
    t.string   "street_number",       null: false
    t.string   "street_name",         null: false
    t.string   "unit"
    t.string   "city",                null: false
    t.string   "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["contact_category_id"], name: "index_addresses_on_contact_category_id"
  add_index "addresses", ["location_id"], name: "index_addresses_on_location_id"
  add_index "addresses", ["organization_id"], name: "index_addresses_on_organization_id"
  add_index "addresses", ["person_id"], name: "index_addresses_on_person_id"
  add_index "addresses", ["state_id"], name: "index_addresses_on_state_id"

  create_table "admin_users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "contact_categories", force: true do |t|
    t.string   "name",        null: false
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "course_formats", force: true do |t|
    t.string   "name",        null: false
    t.text     "description", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "course_offerings", force: true do |t|
    t.integer  "course_template_id"
    t.integer  "course_format_id",   null: false
    t.string   "name",               null: false
    t.date     "start_date",         null: false
    t.date     "end_date"
    t.time     "start_time",         null: false
    t.time     "end_time"
    t.string   "meeting_days"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "course_offerings", ["course_format_id"], name: "index_course_offerings_on_course_format_id"
  add_index "course_offerings", ["course_template_id"], name: "index_course_offerings_on_course_template_id"

  create_table "course_providers", force: true do |t|
    t.integer  "organization_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "course_providers", ["organization_id"], name: "index_course_providers_on_organization_id"

  create_table "course_purposes", force: true do |t|
    t.integer  "license_id"
    t.integer  "course_template_id"
    t.text     "description",                           null: false
    t.boolean  "license_qualification", default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "course_purposes", ["course_template_id"], name: "index_course_purposes_on_course_template_id"
  add_index "course_purposes", ["license_id"], name: "index_course_purposes_on_license_id"

  create_table "course_templates", force: true do |t|
    t.integer  "course_provider_id", null: false
    t.string   "syllabus_file_path"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "default_name"
    t.integer  "time_limit"
  end

  add_index "course_templates", ["course_provider_id"], name: "index_course_templates_on_course_provider_id"

  create_table "credit_vouchers", force: true do |t|
    t.string   "voucher_key"
    t.integer  "sale_id"
    t.integer  "expiry_days",      default: 367
    t.boolean  "person_specific",  default: true, null: false
    t.integer  "sellable_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "credit_vouchers", ["sale_id"], name: "index_credit_vouchers_on_sale_id"
  add_index "credit_vouchers", ["sellable_type_id"], name: "index_credit_vouchers_on_sellable_type_id"

  create_table "emails", force: true do |t|
    t.integer  "contact_category_id", null: false
    t.integer  "organization_id"
    t.integer  "person_id"
    t.string   "address",             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "emails", ["contact_category_id"], name: "index_emails_on_contact_category_id"
  add_index "emails", ["organization_id"], name: "index_emails_on_organization_id"
  add_index "emails", ["person_id"], name: "index_emails_on_person_id"

  create_table "employments", force: true do |t|
    t.integer  "organization_id"
    t.integer  "person_id",       null: false
    t.string   "position",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "employments", ["organization_id"], name: "index_employments_on_organization_id"
  add_index "employments", ["person_id"], name: "index_employments_on_person_id"

  create_table "identities", force: true do |t|
    t.string   "value",              null: false
    t.integer  "organization_id",    null: false
    t.integer  "person_id"
    t.integer  "course_provider_id"
    t.integer  "course_template_id"
    t.integer  "course_offering_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "identity_type"
  end

  create_table "license_helds", force: true do |t|
    t.string   "license_number",                null: false
    t.boolean  "active",         default: true, null: false
    t.integer  "license_id",                    null: false
    t.integer  "person_id",                     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "license_helds", ["license_id"], name: "index_license_helds_on_license_id"
  add_index "license_helds", ["person_id"], name: "index_license_helds_on_person_id"

  create_table "licenses", force: true do |t|
    t.string   "name",        null: false
    t.text     "description"
    t.integer  "issuer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "name",               null: false
    t.integer  "course_offering_id"
    t.integer  "organization_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locations", ["course_offering_id"], name: "index_locations_on_course_offering_id"
  add_index "locations", ["organization_id"], name: "index_locations_on_organization_id"

  create_table "organizations", force: true do |t|
    t.string   "name",        null: false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payment_categories", force: true do |t|
    t.string   "name"
    t.integer  "payment_selection_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "payment_categories", ["payment_selection_id"], name: "index_payment_categories_on_payment_selection_id"

  create_table "payment_selections", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payors", force: true do |t|
    t.integer  "person_id"
    t.integer  "organization_id"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "payors", ["organization_id"], name: "index_payors_on_organization_id"
  add_index "payors", ["person_id"], name: "index_payors_on_person_id"

  create_table "people", force: true do |t|
    t.string   "firstname",  null: false
    t.string   "middlename"
    t.string   "lastname",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phones", force: true do |t|
    t.integer  "contact_category_id", null: false
    t.integer  "organization_id"
    t.integer  "person_id"
    t.integer  "area_code",           null: false
    t.integer  "number",              null: false
    t.string   "extension"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "phones", ["contact_category_id"], name: "index_phones_on_contact_category_id"
  add_index "phones", ["organization_id"], name: "index_phones_on_organization_id"
  add_index "phones", ["person_id"], name: "index_phones_on_person_id"

  create_table "refund_methods", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "refund_reasons", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "role_list_entries", force: true do |t|
    t.integer  "person_id",          null: false
    t.integer  "role_id",            null: false
    t.integer  "role_list_id",       null: false
    t.integer  "course_offering_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "role_list_entries", ["course_offering_id"], name: "index_role_list_entries_on_course_offering_id"
  add_index "role_list_entries", ["person_id"], name: "index_role_list_entries_on_person_id"
  add_index "role_list_entries", ["role_id"], name: "index_role_list_entries_on_role_id"
  add_index "role_list_entries", ["role_list_id"], name: "index_role_list_entries_on_role_list_id"

  create_table "role_lists", force: true do |t|
    t.integer  "course_offering_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "role_lists", ["course_offering_id"], name: "index_role_lists_on_course_offering_id"

  create_table "roles", force: true do |t|
    t.string   "name",        null: false
    t.text     "description", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sales", force: true do |t|
    t.integer  "payment_category_id"
    t.integer  "payment_selection_id"
    t.integer  "sellable_id"
    t.integer  "payor_id"
    t.integer  "earned"
    t.integer  "refunded"
    t.integer  "debit"
    t.integer  "credit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sales", ["payment_category_id"], name: "index_sales_on_payment_category_id"
  add_index "sales", ["payment_selection_id"], name: "index_sales_on_payment_selection_id"
  add_index "sales", ["payor_id"], name: "index_sales_on_payor_id"
  add_index "sales", ["sellable_id"], name: "index_sales_on_sellable_id"

  create_table "sellable_course_offerings", force: true do |t|
    t.integer  "course_offering_id"
    t.integer  "sellable_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sellable_course_offerings", ["course_offering_id"], name: "index_sellable_course_offerings_on_course_offering_id"
  add_index "sellable_course_offerings", ["sellable_id"], name: "index_sellable_course_offerings_on_sellable_id"

  create_table "sellable_course_templates", force: true do |t|
    t.integer  "course_template_id"
    t.integer  "sellable_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sellable_course_templates", ["course_template_id"], name: "index_sellable_course_templates_on_course_template_id"
  add_index "sellable_course_templates", ["sellable_id"], name: "index_sellable_course_templates_on_sellable_id"

  create_table "sellable_products", force: true do |t|
    t.integer  "product_id"
    t.integer  "sellable_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sellable_products", ["product_id"], name: "index_sellable_products_on_product_id"
  add_index "sellable_products", ["sellable_id"], name: "index_sellable_products_on_sellable_id"

  create_table "sellable_types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sellables", force: true do |t|
    t.integer  "sellable_type_id"
    t.integer  "price"
    t.boolean  "taxable"
    t.boolean  "should_prepay"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sellables", ["sellable_type_id"], name: "index_sellables_on_sellable_type_id"

  create_table "states", force: true do |t|
    t.string   "abbreviation", limit: 2, null: false
    t.string   "name",                   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "voucher_methods", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "voucher_reasons", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
