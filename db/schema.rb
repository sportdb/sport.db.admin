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

ActiveRecord::Schema.define(:version => 20121006123833) do

  create_table "countries", :force => true do |t|
    t.string   "title",      :null => false
    t.string   "tag",        :null => false
    t.string   "key",        :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "title",      :null => false
    t.string   "key",        :null => false
    t.datetime "start_at",   :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "events", ["key"], :name => "index_events_on_key", :unique => true

  create_table "events_teams", :force => true do |t|
    t.integer  "event_id",   :null => false
    t.integer  "team_id",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "events_teams", ["event_id", "team_id"], :name => "index_events_teams_on_event_id_and_team_id", :unique => true
  add_index "events_teams", ["event_id"], :name => "index_events_teams_on_event_id"

  create_table "games", :force => true do |t|
    t.integer  "round_id",                        :null => false
    t.integer  "pos",                             :null => false
    t.integer  "group_id"
    t.integer  "team1_id",                        :null => false
    t.integer  "team2_id",                        :null => false
    t.datetime "play_at",                         :null => false
    t.boolean  "knockout",     :default => false, :null => false
    t.boolean  "home",         :default => true,  :null => false
    t.integer  "score1"
    t.integer  "score2"
    t.integer  "score3"
    t.integer  "score4"
    t.integer  "score5"
    t.integer  "score6"
    t.integer  "next_game_id"
    t.integer  "prev_game_id"
    t.string   "toto12x"
    t.string   "key"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "games", ["group_id"], :name => "index_games_on_group_id"
  add_index "games", ["key"], :name => "index_games_on_key", :unique => true
  add_index "games", ["next_game_id"], :name => "index_games_on_next_game_id"
  add_index "games", ["prev_game_id"], :name => "index_games_on_prev_game_id"
  add_index "games", ["round_id"], :name => "index_games_on_round_id"

  create_table "groups", :force => true do |t|
    t.integer  "event_id",   :null => false
    t.string   "title",      :null => false
    t.integer  "pos",        :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "groups", ["event_id"], :name => "index_groups_on_event_id"

  create_table "groups_teams", :force => true do |t|
    t.integer  "group_id",   :null => false
    t.integer  "team_id",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "groups_teams", ["group_id", "team_id"], :name => "index_groups_teams_on_group_id_and_team_id", :unique => true
  add_index "groups_teams", ["group_id"], :name => "index_groups_teams_on_group_id"

  create_table "props", :force => true do |t|
    t.string   "key",        :null => false
    t.string   "value",      :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rounds", :force => true do |t|
    t.integer  "event_id",                      :null => false
    t.string   "title",                         :null => false
    t.string   "title2"
    t.integer  "pos",                           :null => false
    t.boolean  "playoff",    :default => false, :null => false
    t.datetime "start_at",                      :null => false
    t.datetime "end_at"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "rounds", ["event_id"], :name => "index_rounds_on_event_id"

  create_table "teams", :force => true do |t|
    t.string   "title",                         :null => false
    t.string   "title2"
    t.string   "key",                           :null => false
    t.string   "tag"
    t.string   "synonyms"
    t.integer  "country_id",                    :null => false
    t.boolean  "club",       :default => false, :null => false
    t.boolean  "national",   :default => false, :null => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "teams", ["key"], :name => "index_teams_on_key", :unique => true

end
