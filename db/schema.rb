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

ActiveRecord::Schema.define(:version => 20101019235944) do

  create_table "days", :force => true do |t|
    t.date     "date"
    t.float    "hours"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", :force => true do |t|
    t.string   "project"
    t.string   "client"
    t.string   "team"
    t.string   "region"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

# Could not dump table "users" because of following StandardError
#   Unknown type 'Role' for column 'role'

  create_table "weeks", :force => true do |t|
    t.date     "start"
    t.date     "stop"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
