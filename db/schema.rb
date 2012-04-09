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

ActiveRecord::Schema.define(:version => 20120409213731) do

  create_table "registrations", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "amount"
    t.string   "token"
    t.string   "card_last_four"
    t.string   "card_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "usrlib_membership"
    t.integer  "rw_number"
    t.datetime "rw_date"
    t.boolean  "agreed_to_refund_policy"
    t.boolean  "agreed_to_min_requirements"
  end

  create_table "waitlists", :force => true do |t|
    t.string    "name"
    t.string    "email"
    t.string    "phone"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

end
