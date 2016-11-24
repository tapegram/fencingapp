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

ActiveRecord::Schema.define(version: 20161124185948) do

  create_table "bouts", force: :cascade do |t|
    t.integer  "bout_number"
    t.integer  "score_left"
    t.integer  "score_right"
    t.string   "priority"
    t.integer  "fencer_left_id"
    t.integer  "fencer_right_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "fencers", force: :cascade do |t|
    t.string   "epee_rating"
    t.integer  "epee_rating_year"
    t.string   "foil_rating"
    t.integer  "foil_rating_year"
    t.string   "sabre_rating"
    t.integer  "sabre_rating_year"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

end
