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

ActiveRecord::Schema.define(version: 2018_10_08_144260) do

  create_table "answers", force: :cascade do |t|
    t.integer "id_answer"
    t.text "description"
    t.integer "qualification"
    t.date "date"
    t.integer "user_id"
    t.integer "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
    t.index ["user_id"], name: "index_answers_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "id_comment"
    t.text "description"
    t.date "date"
    t.integer "user_id"
    t.integer "answer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["answer_id"], name: "index_comments_on_answer_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "documents", force: :cascade do |t|
    t.integer "id_document"
    t.string "title"
    t.integer "user_id"
    t.integer "questionm_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["questionm_id"], name: "index_documents_on_questionm_id"
    t.index ["user_id"], name: "index_documents_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.integer "id_question"
    t.string "title"
    t.text "description"
    t.date "date"
    t.integer "user_id"
    t.integer "topic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["topic_id"], name: "index_questions_on_topic_id"
    t.index ["user_id"], name: "index_questions_on_user_id"
  end

  create_table "statistics", force: :cascade do |t|
    t.integer "id_statistic"
    t.integer "points"
    t.integer "number_of_answers"
    t.integer "number_of_questions"
    t.integer "number_of_best_answers"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_statistics_on_user_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.integer "id_subject"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "topics", force: :cascade do |t|
    t.integer "id_topic"
    t.string "name"
    t.integer "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_topics_on_subject_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer "id_user"
    t.string "name"
    t.integer "level"
    t.string "reputation"
    t.string "role"
    t.integer "number_of_followers"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
