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

ActiveRecord::Schema.define(:version => 20121130150706) do

  create_table "applications", :force => true do |t|
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "spiritual_name"
    t.integer  "age"
    t.date     "date_of_birth"
    t.string   "sex"
    t.string   "marital_status"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "zipcode"
    t.string   "email"
    t.string   "dayphone"
    t.string   "nightphone"
    t.string   "language"
    t.string   "illness"
    t.string   "prescribed_medications"
    t.string   "emergency_contact"
    t.string   "emergency_relationship"
    t.string   "emergency_email"
    t.string   "emergency_phone"
    t.string   "emergency_address"
    t.string   "how_long_practice"
    t.string   "how_know"
    t.boolean  "ever_been"
    t.text     "experience"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.string   "status"
    t.integer  "tuition"
    t.string   "course"
  end

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.integer  "tuition"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "hashed_password"
    t.string   "salt"
    t.string   "role"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
