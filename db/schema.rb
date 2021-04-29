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

ActiveRecord::Schema.define(version: 2021_04_27_202104) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "launch_reviews", force: :cascade do |t|
    t.string "launch_id"
    t.string "reviewer"
    t.boolean "present_at_launch"
    t.text "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "launches", id: :string, force: :cascade do |t|
    t.string "rocket_id"
    t.string "launchpad_id"
    t.text "flckr_original", default: [], array: true
    t.string "webcast"
    t.string "wikipedia"
    t.boolean "success"
    t.text "details"
    t.integer "flight_number"
    t.string "name"
    t.datetime "launch_date_time"
    t.boolean "upcoming"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "launchpads", id: :string, force: :cascade do |t|
    t.string "name"
    t.string "full_name"
    t.string "locality"
    t.string "region"
    t.string "timezone"
    t.float "latitude"
    t.float "longitude"
    t.integer "launch_attempts"
    t.integer "launch_successes"
    t.string "details"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rockets", id: :string, force: :cascade do |t|
    t.float "height"
    t.float "diameter"
    t.float "mass"
    t.float "isp_sea_level"
    t.float "isp_vacuum"
    t.integer "landing_legs"
    t.string "landing_legs_material"
    t.text "flickr_images", default: [], array: true
    t.string "name"
    t.boolean "active"
    t.integer "cost_per_launch"
    t.boolean "success_rate_pct"
    t.datetime "first_flight"
    t.string "wikipedia"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
