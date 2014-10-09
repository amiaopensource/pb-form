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

ActiveRecord::Schema.define(version: 20141009040647) do

  create_table "metadata", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "creator"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "records", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "creator"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "program_title"
    t.string   "series_title"
    t.string   "supplied_title"
    t.string   "alternative_title"
    t.string   "episode_title"
    t.string   "clip_title"
    t.string   "asset_type"
    t.string   "unique_id"
    t.string   "unique_id_source"
    t.string   "description_type"
    t.string   "description_source"
    t.string   "description_reference"
    t.text     "subject"
    t.string   "subject_type"
    t.string   "subject_source"
    t.string   "subject_reference"
  end

end
