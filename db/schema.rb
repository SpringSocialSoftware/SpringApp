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

ActiveRecord::Schema.define(version: 20180215000458) do

  create_table "consequences", force: :cascade do |t|
    t.integer "topic_id", null: false
    t.integer "solution_id", null: false
    t.text "title", null: false
    t.text "author", null: false
    t.text "content", null: false
    t.integer "upvotes", null: false
    t.integer "downvotes", null: false
    t.integer "warnings", null: false
    t.boolean "user_upvoted", null: false
    t.boolean "user_downvoted", null: false
    t.boolean "user_warned", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["solution_id"], name: "index_consequences_on_solution_id"
    t.index ["topic_id"], name: "index_consequences_on_topic_id"
  end

  create_table "insights", force: :cascade do |t|
    t.integer "topic_id", null: false
    t.text "content", null: false
    t.integer "upvotes", null: false
    t.integer "downvotes", null: false
    t.integer "warnings", null: false
    t.boolean "user_upvoted", null: false
    t.boolean "user_downvoted", null: false
    t.boolean "user_warned", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["topic_id"], name: "index_insights_on_topic_id"
  end

  create_table "news_articles", force: :cascade do |t|
    t.integer "topic_id", null: false
    t.string "name", null: false
    t.string "author", null: false
    t.string "news_organization", null: false
    t.string "original_url", null: false
    t.integer "upvotes", null: false
    t.integer "downvotes", null: false
    t.integer "warnings", null: false
    t.boolean "user_upvoted", null: false
    t.boolean "user_downvoted", null: false
    t.boolean "user_warned", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["topic_id"], name: "index_news_articles_on_topic_id"
  end

  create_table "problems", force: :cascade do |t|
    t.integer "topic_id", null: false
    t.integer "news_article_id", null: false
    t.text "title", null: false
    t.text "author", null: false
    t.text "content", null: false
    t.integer "upvotes", null: false
    t.integer "downvotes", null: false
    t.integer "warnings", null: false
    t.boolean "user_upvoted", null: false
    t.boolean "user_downvoted", null: false
    t.boolean "user_warned", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["news_article_id"], name: "index_problems_on_news_article_id"
    t.index ["topic_id"], name: "index_problems_on_topic_id"
  end

  create_table "solutions", force: :cascade do |t|
    t.integer "topic_id", null: false
    t.integer "problem_id", null: false
    t.text "title", null: false
    t.text "author", null: false
    t.text "content", null: false
    t.integer "upvotes", null: false
    t.integer "downvotes", null: false
    t.integer "warnings", null: false
    t.boolean "user_upvoted", null: false
    t.boolean "user_downvoted", null: false
    t.boolean "user_warned", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["problem_id"], name: "index_solutions_on_problem_id"
    t.index ["topic_id"], name: "index_solutions_on_topic_id"
  end

  create_table "topics", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
