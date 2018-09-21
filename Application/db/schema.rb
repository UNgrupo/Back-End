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

ActiveRecord::Schema.define(version: 2018_09_21_004507) do

  create_table "answers", force: :cascade do |t|
    t.integer "idAnswer"
    t.text "Description"
    t.integer "Qualification"
    t.date "Date"
    t.integer "idUser"
    t.integer "idQuestion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer "idComment"
    t.integer "idUser"
    t.integer "idAnswer"
    t.text "Description"
    t.date "Date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "documents", force: :cascade do |t|
    t.integer "idDocument"
    t.string "Title"
    t.integer "idUser"
    t.integer "idQuestion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matters", force: :cascade do |t|
    t.integer "idMatter"
    t.string "Name"
    t.integer "Themes_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.integer "idPhoto"
    t.string "Title"
    t.integer "idUser"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.integer "idQuestion"
    t.string "Title"
    t.text "Description"
    t.date "Date"
    t.integer "idTheme"
    t.integer "idUser"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stats", force: :cascade do |t|
    t.integer "idStat"
    t.integer "Points"
    t.integer "Questions_number"
    t.integer "Answers_number"
    t.integer "Best_Answers"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "themes", force: :cascade do |t|
    t.integer "idTheme"
    t.string "Name"
    t.integer "Questions_number"
    t.integer "idMatter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "idUser"
    t.string "Name"
    t.integer "Level"
    t.string "Reputation"
    t.string "Role"
    t.integer "Followers_number"
    t.integer "idStat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
