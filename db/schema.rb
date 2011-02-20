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

ActiveRecord::Schema.define(:version => 20110220192321) do

  create_table "posts", :force => true do |t|
    t.string   "url"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts_tags", :id => false, :force => true do |t|
    t.integer "post_id"
    t.integer "tag_id"
  end

  create_table "tags", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types", :force => true do |t|
    t.string   "user_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types_users", :id => false, :force => true do |t|
    t.integer "type_id"
    t.integer "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "name",       :limit => 70
    t.string   "surname",    :limit => 70
    t.string   "username",   :limit => 70
    t.string   "email",      :limit => 120
    t.string   "user_type",  :limit => 60
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "type_id"
  end

end
