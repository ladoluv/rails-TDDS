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

ActiveRecord::Schema.define(version: 20180417154601) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "tax_searches", force: :cascade do |t|
    t.string "jurisdiction"
    t.string "entity_type"
    t.string "form_name_description"
    t.string "form_name"
    t.string "form_link"
    t.string "supplemental"
    t.string "instructions_link"
    t.string "efile_allowed"
    t.string "efile_required"
    t.text "efile_explanation"
    t.string "efile_aurthorization_name"
    t.text "efile_authorization_name_descripton"
    t.date "due_date"
    t.string "due_date_if_not_calender"
    t.date "extension_due_date"
    t.string "extension_due_date_if_not_calender"
    t.string "extension_required_or_automatic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
