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

ActiveRecord::Schema[7.0].define(version: 2023_07_25_133610) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.bigint "lesson_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_exercises_on_lesson_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.integer "difficulty_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lesson_contents", force: :cascade do |t|
    t.string "name"
    t.bigint "lesson_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_lesson_contents_on_lesson_id"
  end

  create_table "lesson_tests", force: :cascade do |t|
    t.string "name"
    t.bigint "lesson_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_lesson_tests_on_lesson_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.bigint "language_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["language_id"], name: "index_lessons_on_language_id"
  end

  create_table "user_lessons", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "lesson_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_user_lessons_on_lesson_id"
    t.index ["user_id"], name: "index_user_lessons_on_user_id"
  end

  create_table "user_profiles", force: :cascade do |t|
    t.integer "age"
    t.string "native_language"
    t.string "language_proficiency"
    t.string "preferred_content_type"
    t.text "preferred_topics"
    t.string "previous_language_learning_experience"
    t.text "goals"
    t.string "learning_preferences"
    t.string "motivation_level"
    t.string "availability"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_profiles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "exercises", "lessons"
  add_foreign_key "lesson_contents", "lessons"
  add_foreign_key "lesson_tests", "lessons"
  add_foreign_key "lessons", "languages"
  add_foreign_key "user_lessons", "lessons"
  add_foreign_key "user_lessons", "users"
  add_foreign_key "user_profiles", "users"
end
