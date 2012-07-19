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

ActiveRecord::Schema.define(:version => 20120719224620) do

  create_table "attendings", :force => true do |t|
    t.string   "first_init"
    t.string   "last_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "nurses", :force => true do |t|
    t.string   "first_init"
    t.string   "last_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "patients", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
     t.string   "patient_status"
    t.integer  "dilation"
    t.integer  "effacement"
    t.integer  "station"
    t.datetime "last_exam"
    t.string   "membrane"
    t.decimal  "gest_age"
    t.integer  "gravidity"
    t.integer  "parity"
    t.string   "anesthesia_interview"
    t.string   "group_b_strep"
    t.string   "blood_type"
    t.text     "comments"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "rooms", :force => true do |t|
    t.string   "room_number"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end