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

ActiveRecord::Schema.define(version: 20150503152036) do

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
    t.integer  "corporation_id"
    t.integer  "tuition_id"
    t.integer  "payor_id"
    t.integer  "course_provider_id"
    t.integer  "course_template_id"
    t.integer  "course_offering_id"
    t.integer  "system_id"
    t.text     "note",               null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "activity_notes", ["activity_note_id"], name: "index_activity_notes_on_activity_note_id"
  add_index "activity_notes", ["activity_type_id"], name: "index_activity_notes_on_activity_type_id"
  add_index "activity_notes", ["corporation_id"], name: "index_activity_notes_on_corporation_id"
  add_index "activity_notes", ["course_offering_id"], name: "index_activity_notes_on_course_offering_id"
  add_index "activity_notes", ["course_provider_id"], name: "index_activity_notes_on_course_provider_id"
  add_index "activity_notes", ["course_template_id"], name: "index_activity_notes_on_course_template_id"
  add_index "activity_notes", ["payor_id"], name: "index_activity_notes_on_payor_id"
  add_index "activity_notes", ["person_id"], name: "index_activity_notes_on_person_id"
  add_index "activity_notes", ["system_id"], name: "index_activity_notes_on_system_id"
  add_index "activity_notes", ["tuition_id"], name: "index_activity_notes_on_tuition_id"

  create_table "activity_types", force: true do |t|
    t.string   "tag",         null: false
    t.text     "description", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "addresses", force: true do |t|
    t.integer  "contact_category_id", null: false
    t.integer  "corporation_id"
    t.integer  "person_id"
    t.integer  "state_id"
    t.integer  "location_id"
    t.string   "street_number",       null: false
    t.string   "street_name",         null: false
    t.string   "unit"
    t.string   "city",                null: false
    t.integer  "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["contact_category_id"], name: "index_addresses_on_contact_category_id"
  add_index "addresses", ["corporation_id"], name: "index_addresses_on_corporation_id"
  add_index "addresses", ["location_id"], name: "index_addresses_on_location_id"
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

  create_table "corporations", force: true do |t|
    t.string   "name",        null: false
    t.text     "description"
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
    t.integer  "course_format_id",                null: false
    t.string   "name",                            null: false
    t.integer  "outside_identifier_instances_id"
    t.date     "start_date",                      null: false
    t.date     "end_date"
    t.time     "start_time"
    t.time     "end_time"
    t.string   "meeting_days"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "course_offerings", ["course_format_id"], name: "index_course_offerings_on_course_format_id"
  add_index "course_offerings", ["course_template_id"], name: "index_course_offerings_on_course_template_id"

  create_table "course_providers", force: true do |t|
    t.integer  "corporation_id",                  null: false
    t.integer  "outside_identifier_instances_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "course_providers", ["corporation_id"], name: "index_course_providers_on_corporation_id"

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
    t.integer  "course_provider_id",              null: false
    t.string   "syllabus_file_path"
    t.integer  "outside_identifier_instances_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "default_name"
  end

  add_index "course_templates", ["course_provider_id"], name: "index_course_templates_on_course_provider_id"

  create_table "emails", force: true do |t|
    t.integer  "contact_category_id", null: false
    t.integer  "corporation_id"
    t.integer  "person_id"
    t.string   "address",             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "emails", ["contact_category_id"], name: "index_emails_on_contact_category_id"
  add_index "emails", ["corporation_id"], name: "index_emails_on_corporation_id"
  add_index "emails", ["person_id"], name: "index_emails_on_person_id"

  create_table "employments", force: true do |t|
    t.integer  "corporation_id"
    t.integer  "person_id",      null: false
    t.string   "position",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "employments", ["corporation_id"], name: "index_employments_on_corporation_id"
  add_index "employments", ["person_id"], name: "index_employments_on_person_id"

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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "name",               null: false
    t.integer  "course_offering_id"
    t.integer  "corporation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locations", ["corporation_id"], name: "index_locations_on_corporation_id"
  add_index "locations", ["course_offering_id"], name: "index_locations_on_course_offering_id"

  create_table "outside_identifier_instances", force: true do |t|
    t.string   "value",                  null: false
    t.integer  "outside_identifiers_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "outside_identifiers", force: true do |t|
    t.string   "name",        null: false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payors", force: true do |t|
    t.integer  "person_id"
    t.integer  "corporation_id"
    t.integer  "tuition_id",     null: false
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "payors", ["corporation_id"], name: "index_payors_on_corporation_id"
  add_index "payors", ["person_id"], name: "index_payors_on_person_id"
  add_index "payors", ["tuition_id"], name: "index_payors_on_tuition_id"

  create_table "people", force: true do |t|
    t.string   "firstname",                       null: false
    t.string   "middlename"
    t.string   "lastname",                        null: false
    t.integer  "ssn"
    t.integer  "outside_identifier_instances_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phones", force: true do |t|
    t.integer  "contact_category_id", null: false
    t.integer  "corporation_id"
    t.integer  "person_id"
    t.integer  "area_code",           null: false
    t.integer  "number",              null: false
    t.string   "extension"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "phones", ["contact_category_id"], name: "index_phones_on_contact_category_id"
  add_index "phones", ["corporation_id"], name: "index_phones_on_corporation_id"
  add_index "phones", ["person_id"], name: "index_phones_on_person_id"

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

  create_table "states", force: true do |t|
    t.string   "abbreviation", limit: 2, null: false
    t.string   "name",                   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tuitions", force: true do |t|
    t.integer  "role_list_entry_id"
    t.integer  "receivable",         default: 0,     null: false
    t.integer  "paid",               default: 0,     null: false
    t.integer  "refunded",           default: 0,     null: false
    t.date     "date_paid"
    t.boolean  "earned",             default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tuitions", ["role_list_entry_id"], name: "index_tuitions_on_role_list_entry_id"

end
