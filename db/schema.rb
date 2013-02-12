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

ActiveRecord::Schema.define(:version => 20130212103343) do

  create_table "committees", :force => true do |t|
    t.string   "name",        :limit => 40, :null => false
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "committees", ["user_id"], :name => "index_committees_on_user_id"

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
