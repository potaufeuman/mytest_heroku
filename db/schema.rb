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

ActiveRecord::Schema.define(version: 20200322122901) do

  create_table "answers", force: :cascade do |t|
    t.integer "test_id"
    t.integer "tested_id"
    t.integer "select_A"
    t.integer "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "select_id"
    t.index ["question_id"], name: "index_answers_on_question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.integer "test_id"
    t.text "Q"
    t.text "correct_A"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "select_id"
    t.integer "point"
    t.integer "answer_id"
    t.index ["test_id"], name: "index_questions_on_test_id"
  end

  create_table "relationships", force: :cascade do |t|
    t.integer "tested_id"
    t.datetime "tested_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tested_id", "tested_at"], name: "index_relationships_on_tested_id_and_tested_at"
  end

  create_table "selects", force: :cascade do |t|
    t.text "content"
    t.integer "judge"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "question_id"
    t.integer "answer_id"
  end

  create_table "tests", force: :cascade do |t|
    t.string "subject"
    t.string "title"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "tested_id"
    t.index ["user_id", "created_at"], name: "index_tests_on_user_id_and_created_at"
    t.index ["user_id"], name: "index_tests_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.boolean "admin", default: false
    t.string "activation_digest"
    t.boolean "activated", default: false
    t.datetime "activated_at"
    t.integer "tested_id"
    t.datetime "tested_at"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
