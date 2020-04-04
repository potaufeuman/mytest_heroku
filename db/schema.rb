ActiveRecord::Schema.define(version: 20200331135741) do

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
    t.string "reset_digest"
    t.datetime "reset_sent_at"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
