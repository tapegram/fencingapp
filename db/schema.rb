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

ActiveRecord::Schema.define(version: 20161125021937) do

  create_table "bouts", force: :cascade do |t|
    t.integer  "bout_number"
    t.integer  "score_left"
    t.integer  "score_right"
    t.string   "priority"
    t.integer  "fencer_left_id"
    t.integer  "fencer_right_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "pool_id"
  end

  add_index "bouts", ["pool_id"], name: "index_bouts_on_pool_id"

  create_table "fencer_assignments", force: :cascade do |t|
    t.integer  "tournament_id"
    t.integer  "pool_id"
    t.integer  "initial_seed"
    t.integer  "seed_after_pools"
    t.integer  "final_place"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "fencer_assignments", ["pool_id"], name: "index_fencer_assignments_on_pool_id"
  add_index "fencer_assignments", ["tournament_id"], name: "index_fencer_assignments_on_tournament_id"

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

  create_table "pools", force: :cascade do |t|
    t.boolean  "finished"
    t.integer  "tournament_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "pools", ["tournament_id"], name: "index_pools_on_tournament_id"

  create_table "tournaments", force: :cascade do |t|
    t.string   "name"
    t.string   "event"
    t.string   "gender"
    t.integer  "minAge"
    t.integer  "maxAge"
    t.string   "minRating"
    t.string   "maxRating"
    t.datetime "registration_close"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end
