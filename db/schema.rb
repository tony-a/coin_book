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

ActiveRecord::Schema.define(:version => 20121205193227) do

  create_table "coins", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "oldcoins", :primary_key => "CoinID", :force => true do |t|
    t.string  "Coin",         :limit => 25
    t.string  "Year",         :limit => 4
    t.string  "MintLocation", :limit => 35
    t.integer "UserID",       :limit => 2
  end

  add_index "oldcoins", ["UserID"], :name => "UserID"

  create_table "oldusers", :primary_key => "UserID", :force => true do |t|
    t.string "FirstName", :limit => 20
    t.string "LastName",  :limit => 20
    t.string "Email",     :limit => 40
  end

  create_table "userone", :id => false, :force => true do |t|
    t.string "firstname",    :limit => 20, :default => ""
    t.string "lastname",     :limit => 35, :default => ""
    t.string "coin",         :limit => 20
    t.string "year",         :limit => 4
    t.string "mintlocation", :limit => 35
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
