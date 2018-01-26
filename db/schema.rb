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

ActiveRecord::Schema.define(version: 20180126005954) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courseprofesors", force: :cascade do |t|
    t.string "profesor"
    t.string "course"
    t.string "subject"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "encuesta", force: :cascade do |t|
    t.string "profesor"
    t.string "subject"
    t.string "student"
    t.integer "p1"
    t.integer "p2"
    t.integer "p3"
    t.integer "p4"
    t.integer "p5"
    t.integer "p6"
    t.integer "p7"
    t.integer "p8"
    t.integer "p9"
    t.integer "p10"
    t.integer "p11"
    t.integer "p12"
    t.integer "p13"
    t.integer "p14"
    t.integer "p15"
    t.integer "p16"
    t.integer "p17"
    t.integer "p18"
    t.integer "p19"
    t.integer "p20"
    t.integer "p21"
    t.integer "p22"
    t.integer "p23"
    t.integer "p24"
    t.string "bueno"
    t.string "mejorar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "course"
    t.integer "code"
    t.integer "stock"
    t.string "token"
    t.integer "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
