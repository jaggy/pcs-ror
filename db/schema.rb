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

ActiveRecord::Schema.define(:version => 20130216002600) do

  create_table "attachments", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "mimetype",   :null => false
    t.string   "path",       :null => false
    t.integer  "size",       :null => false
    t.integer  "post_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "attachments", ["post_id"], :name => "index_attachments_on_post_id"

  create_table "categories", :force => true do |t|
    t.string   "name",        :limit => 32, :null => false
    t.text     "description"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "comments", :force => true do |t|
    t.text     "content",    :null => false
    t.integer  "user_id",    :null => false
    t.integer  "post_id",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comments", ["post_id"], :name => "index_comments_on_post_id"
  add_index "comments", ["user_id"], :name => "index_comments_on_user_id"

  create_table "committees", :force => true do |t|
    t.string   "name",        :limit => 40, :null => false
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "committees", ["user_id"], :name => "index_committees_on_user_id"

  create_table "committees_users", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "committee_id"
  end

  add_index "committees_users", ["user_id", "committee_id"], :name => "index_committees_users_on_user_id_and_committee_id"

  create_table "discussions", :force => true do |t|
    t.string   "title",        :null => false
    t.text     "description"
    t.integer  "committee_id", :null => false
    t.integer  "user_id",      :null => false
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "discussions", ["committee_id"], :name => "index_discussions_on_committee_id"
  add_index "discussions", ["user_id"], :name => "index_discussions_on_user_id"

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "parent_id"
    t.integer  "user_id",       :null => false
    t.integer  "discussion_id"
    t.integer  "category_id",   :null => false
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "posts", ["category_id"], :name => "index_posts_on_category_id"
  add_index "posts", ["discussion_id"], :name => "index_posts_on_discussion_id"
  add_index "posts", ["parent_id"], :name => "index_posts_on_parent_id"
  add_index "posts", ["user_id"], :name => "index_posts_on_user_id"

  create_table "roles", :force => true do |t|
    t.string   "name",        :limit => 18, :null => false
    t.text     "description"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username",        :limit => 18,                     :null => false
    t.string   "password_digest"
    t.string   "first_name",      :limit => 18,                     :null => false
    t.string   "middle_name",     :limit => 27
    t.string   "last_name",       :limit => 27,                     :null => false
    t.string   "email",           :limit => 117,                    :null => false
    t.string   "image"
    t.boolean  "status",                         :default => false
    t.integer  "role_id"
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
  end

  add_index "users", ["role_id"], :name => "index_users_on_role_id"

end
