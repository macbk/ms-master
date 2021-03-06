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

ActiveRecord::Schema.define(version: 20170213174208) do

  create_table "helicopters", force: :cascade do |t|
    t.string   "registration"
    t.integer  "serial_number"
    t.integer  "last_ms"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "statements", force: :cascade do |t|
    t.string   "sot"
    t.string   "crs"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "helicopter_id"
    t.index ["helicopter_id"], name: "index_statements_on_helicopter_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "title"
    t.string   "term"
    t.integer  "statement_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["statement_id"], name: "index_tasks_on_statement_id"
  end

end
