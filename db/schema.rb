# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120321105623) do

  create_table "articles", :force => true do |t|
    t.integer  "users_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.date     "published_at", :null => false
  end

  create_table "articles_categories", :id => false, :force => true do |t|
    t.integer "article_id"
    t.integer "category_id"
  end

  create_table "books", :force => true do |t|
    t.string   "title"
    t.string   "author"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", :force => true do |t|
    t.integer  "article_id"
    t.string   "name"
    t.string   "email"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contact_numbers", :force => true do |t|
    t.integer  "friends_id"
    t.string   "mobile_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "friends", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.string   "name"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "subjects", :force => true do |t|
    t.string   "name"
    t.string   "course"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjecttopics", :force => true do |t|
    t.integer  "subject_id"
    t.string   "topic_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.string   "address"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
