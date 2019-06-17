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

ActiveRecord::Schema.define(version: 2019_06_17_155124) do

  create_table "blackjacks", force: :cascade do |t|
    t.integer "player_id"
    t.string "room_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gamechats", force: :cascade do |t|
    t.integer "user_id"
    t.integer "game_id"
    t.string "game_type"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lobbychats", force: :cascade do |t|
    t.integer "user_id"
    t.string "body"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.integer "user_id"
    t.integer "sender_id"
    t.text "body"
    t.string "game"
    t.integer "game_id"
    t.integer "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "read"
  end

  create_table "pictionaries", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "last_online"
    t.integer "current_score"
    t.integer "all_time_score"
    t.boolean "turn"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string "username"
    t.string "color"
    t.text "desc"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tictactoes", force: :cascade do |t|
    t.integer "x_id"
    t.integer "o_id"
    t.string "a1"
    t.string "b1"
    t.string "c1"
    t.string "a2"
    t.string "b2"
    t.string "c2"
    t.string "a3"
    t.string "b3"
    t.string "c3"
    t.integer "x_wins"
    t.integer "o_wins"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "turn"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "time_zone"
    t.boolean "email_confirmed", default: false
    t.string "confirm_token"
    t.string "reset_digest"
    t.datetime "reset_sent_at"
    t.boolean "admin", default: false
    t.boolean "banned_from_chat", default: false
    t.datetime "ban_until"
    t.integer "points", default: 1000
    t.integer "wins", default: 0
    t.integer "losses", default: 0
    t.datetime "time_since_daily_bonus", default: "2019-06-11 20:41:34"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
