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

ActiveRecord::Schema.define(version: 20190326171611) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "log_csp_data", force: :cascade do |t|
    t.string "appname"
    t.text "errors_list"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "log_load_times", force: :cascade do |t|
    t.float "download_from_server_wo_hg"
    t.float "render_webpage_wo_hg"
    t.float "dom_wo_hg"
    t.float "download_from_server_w_hg"
    t.float "render_webpage_w_hg"
    t.float "dom_w_hg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "app_name"
  end

end
