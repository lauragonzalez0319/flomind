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

ActiveRecord::Schema[7.0].define(version: 2022_10_05_034009) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "educational_insight_favorites", force: :cascade do |t|
    t.bigint "educational_insight_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["educational_insight_id"], name: "index_educational_insight_favorites_on_educational_insight_id"
    t.index ["user_id"], name: "index_educational_insight_favorites_on_user_id"
  end

  create_table "educational_insights", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.string "source"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "title"
    t.boolean "all_day"
    t.string "start"
    t.string "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.string "identify_as"
    t.integer "age"
    t.integer "weight"
    t.string "height"
    t.string "birth_control_method"
    t.boolean "menstruating"
    t.string "average_cycle_length"
    t.boolean "period_notification_on"
    t.boolean "self_breast_exam_notification_on"
    t.boolean "mammogram_notification_on"
    t.boolean "routine_checkup_notification_on"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "educational_insight_favorites", "educational_insights"
  add_foreign_key "educational_insight_favorites", "users"
  add_foreign_key "events", "users"
end
