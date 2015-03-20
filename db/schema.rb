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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150320091419) do

  create_table "carts", force: :cascade do |t|
    t.string  "name",  limit: 32
    t.integer "price", limit: 4
  end

  create_table "orders", force: :cascade do |t|
    t.string  "adress",      limit: 32
    t.string  "name",        limit: 32
    t.integer "total_price", limit: 4
  end

  create_table "product_orders", force: :cascade do |t|
    t.integer "product_id", limit: 4
    t.integer "order_id",   limit: 4
  end

  create_table "products", force: :cascade do |t|
    t.string  "name",        limit: 32
    t.integer "price",       limit: 4
    t.string  "description", limit: 255, default: ""
    t.string  "currency",    limit: 255
  end

end