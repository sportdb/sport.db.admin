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

ActiveRecord::Schema.define(version: 1) do

  create_table "alltime_standing_entries", force: :cascade do |t|
    t.integer "alltime_standing_id", null: false
    t.integer "team_id", null: false
    t.integer "pos"
    t.integer "played"
    t.integer "won"
    t.integer "lost"
    t.integer "drawn"
    t.integer "goals_for"
    t.integer "goals_against"
    t.integer "pts"
    t.integer "recs"
    t.string "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alltime_standing_id"], name: "index_alltime_standing_entries_on_alltime_standing_id"
    t.index ["team_id"], name: "index_alltime_standing_entries_on_team_id"
  end

  create_table "alltime_standings", force: :cascade do |t|
    t.string "key", null: false
    t.string "title", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assocs", force: :cascade do |t|
    t.string "key", null: false
    t.string "title", null: false
    t.integer "since"
    t.string "web"
    t.integer "country_id"
    t.boolean "national", default: false, null: false
    t.boolean "continental", default: false, null: false
    t.boolean "intercontinental", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_assocs_on_country_id"
    t.index ["key"], name: "index_assocs_on_key", unique: true
  end

  create_table "assocs_assocs", force: :cascade do |t|
    t.integer "assoc1_id", null: false
    t.integer "assoc2_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assoc1_id", "assoc2_id"], name: "index_assocs_assocs_on_assoc1_id_and_assoc2_id", unique: true
    t.index ["assoc1_id"], name: "index_assocs_assocs_on_assoc1_id"
    t.index ["assoc2_id"], name: "index_assocs_assocs_on_assoc2_id"
  end

  create_table "badges", force: :cascade do |t|
    t.integer "team_id", null: false
    t.integer "league_id", null: false
    t.integer "season_id", null: false
    t.string "title", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["league_id"], name: "index_badges_on_league_id"
    t.index ["season_id"], name: "index_badges_on_season_id"
    t.index ["team_id"], name: "index_badges_on_team_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name", null: false
    t.string "key", null: false
    t.integer "place_id", null: false
    t.string "code"
    t.string "alt_names"
    t.integer "country_id", null: false
    t.integer "state_id"
    t.integer "part_id"
    t.integer "county_id"
    t.integer "muni_id"
    t.integer "metro_id"
    t.integer "pop"
    t.integer "area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_cities_on_country_id"
    t.index ["county_id"], name: "index_cities_on_county_id"
    t.index ["metro_id"], name: "index_cities_on_metro_id"
    t.index ["muni_id"], name: "index_cities_on_muni_id"
    t.index ["part_id"], name: "index_cities_on_part_id"
    t.index ["place_id"], name: "index_cities_on_place_id"
    t.index ["state_id"], name: "index_cities_on_state_id"
  end

  create_table "continents", force: :cascade do |t|
    t.string "name", null: false
    t.string "slug", null: false
    t.string "key", null: false
    t.integer "place_id", null: false
    t.string "alt_names"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["key"], name: "index_continents_on_key", unique: true
    t.index ["place_id"], name: "index_continents_on_place_id"
  end

  create_table "counties", force: :cascade do |t|
    t.string "name", null: false
    t.string "key", null: false
    t.integer "place_id", null: false
    t.string "code"
    t.string "abbr"
    t.string "iso"
    t.string "nuts"
    t.string "alt_names"
    t.integer "state_id", null: false
    t.integer "part_id"
    t.integer "level", default: 2, null: false
    t.integer "pop"
    t.integer "area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["part_id"], name: "index_counties_on_part_id"
    t.index ["place_id"], name: "index_counties_on_place_id"
    t.index ["state_id"], name: "index_counties_on_state_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name", null: false
    t.string "slug", null: false
    t.string "key", null: false
    t.integer "place_id", null: false
    t.string "code", null: false
    t.string "alt_names"
    t.string "hist_names"
    t.integer "pop", null: false
    t.integer "area", null: false
    t.integer "continent_id"
    t.integer "country_id"
    t.boolean "s", default: false, null: false
    t.boolean "c", default: false, null: false
    t.boolean "d", default: false, null: false
    t.boolean "m", default: false, null: false
    t.string "motor"
    t.string "alpha2"
    t.string "alpha3"
    t.string "num"
    t.string "fifa"
    t.string "ioc"
    t.string "fips"
    t.string "net"
    t.string "wikipedia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_countries_on_code", unique: true
    t.index ["continent_id"], name: "index_countries_on_continent_id"
    t.index ["country_id"], name: "index_countries_on_country_id"
    t.index ["key"], name: "index_countries_on_key", unique: true
    t.index ["place_id"], name: "index_countries_on_place_id"
  end

  create_table "country_codes", force: :cascade do |t|
    t.string "name", null: false
    t.string "kind", null: false
    t.integer "country_id", null: false
    t.index ["country_id"], name: "index_country_codes_on_country_id"
    t.index ["name", "kind"], name: "index_country_codes_on_name_and_kind", unique: true
  end

  create_table "districts", force: :cascade do |t|
    t.string "name", null: false
    t.string "key", null: false
    t.integer "place_id", null: false
    t.string "code"
    t.string "alt_names"
    t.integer "city_id", null: false
    t.integer "pop"
    t.integer "area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_districts_on_city_id"
    t.index ["place_id"], name: "index_districts_on_place_id"
  end

  create_table "event_standing_entries", force: :cascade do |t|
    t.integer "event_standing_id", null: false
    t.integer "team_id", null: false
    t.integer "pos"
    t.integer "played"
    t.integer "won"
    t.integer "lost"
    t.integer "drawn"
    t.integer "goals_for"
    t.integer "goals_against"
    t.integer "pts"
    t.string "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_standing_id"], name: "index_event_standing_entries_on_event_standing_id"
    t.index ["team_id"], name: "index_event_standing_entries_on_team_id"
  end

  create_table "event_standings", force: :cascade do |t|
    t.integer "event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_standings_on_event_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "key", null: false
    t.integer "league_id", null: false
    t.integer "season_id", null: false
    t.date "start_at", null: false
    t.date "end_at"
    t.boolean "team3", default: true, null: false
    t.string "sources"
    t.string "config"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["key"], name: "index_events_on_key", unique: true
    t.index ["league_id"], name: "index_events_on_league_id"
    t.index ["season_id"], name: "index_events_on_season_id"
  end

  create_table "events_grounds", force: :cascade do |t|
    t.integer "event_id", null: false
    t.integer "ground_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id", "ground_id"], name: "index_events_grounds_on_event_id_and_ground_id", unique: true
    t.index ["event_id"], name: "index_events_grounds_on_event_id"
  end

  create_table "events_teams", force: :cascade do |t|
    t.integer "event_id", null: false
    t.integer "team_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id", "team_id"], name: "index_events_teams_on_event_id_and_team_id", unique: true
    t.index ["event_id"], name: "index_events_teams_on_event_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "key"
    t.integer "round_id", null: false
    t.integer "pos", null: false
    t.integer "group_id"
    t.integer "team1_id", null: false
    t.integer "team2_id", null: false
    t.datetime "play_at", null: false
    t.boolean "postponed", default: false, null: false
    t.datetime "play_at_v2"
    t.datetime "play_at_v3"
    t.integer "ground_id"
    t.integer "city_id"
    t.boolean "knockout", default: false, null: false
    t.boolean "home", default: true, null: false
    t.integer "score1"
    t.integer "score2"
    t.integer "score1et"
    t.integer "score2et"
    t.integer "score1p"
    t.integer "score2p"
    t.integer "score1i"
    t.integer "score2i"
    t.integer "score1ii"
    t.integer "score2ii"
    t.integer "next_game_id"
    t.integer "prev_game_id"
    t.integer "winner"
    t.integer "winner90"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_games_on_city_id"
    t.index ["ground_id"], name: "index_games_on_ground_id"
    t.index ["group_id"], name: "index_games_on_group_id"
    t.index ["key"], name: "index_games_on_key", unique: true
    t.index ["next_game_id"], name: "index_games_on_next_game_id"
    t.index ["prev_game_id"], name: "index_games_on_prev_game_id"
    t.index ["round_id"], name: "index_games_on_round_id"
    t.index ["team1_id"], name: "index_games_on_team1_id"
    t.index ["team2_id"], name: "index_games_on_team2_id"
  end

  create_table "goals", force: :cascade do |t|
    t.integer "person_id", null: false
    t.integer "game_id", null: false
    t.integer "team_id", null: false
    t.integer "minute"
    t.integer "offset", default: 0, null: false
    t.integer "score1"
    t.integer "score2"
    t.boolean "penalty", default: false, null: false
    t.boolean "owngoal", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_goals_on_game_id"
    t.index ["person_id"], name: "index_goals_on_person_id"
    t.index ["team_id"], name: "index_goals_on_team_id"
  end

  create_table "grounds", force: :cascade do |t|
    t.string "key", null: false
    t.string "title", null: false
    t.string "synonyms"
    t.integer "country_id", null: false
    t.integer "city_id"
    t.integer "since"
    t.integer "capacity"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_grounds_on_city_id"
    t.index ["country_id"], name: "index_grounds_on_country_id"
    t.index ["key"], name: "index_grounds_on_key", unique: true
  end

  create_table "group_standing_entries", force: :cascade do |t|
    t.integer "group_standing_id", null: false
    t.integer "team_id", null: false
    t.integer "pos"
    t.integer "played"
    t.integer "won"
    t.integer "lost"
    t.integer "drawn"
    t.integer "goals_for"
    t.integer "goals_against"
    t.integer "pts"
    t.string "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_standing_id"], name: "index_group_standing_entries_on_group_standing_id"
    t.index ["team_id"], name: "index_group_standing_entries_on_team_id"
  end

  create_table "group_standings", force: :cascade do |t|
    t.integer "group_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_group_standings_on_group_id"
  end

  create_table "groups", force: :cascade do |t|
    t.integer "event_id", null: false
    t.string "title", null: false
    t.integer "pos", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_groups_on_event_id"
  end

  create_table "groups_teams", force: :cascade do |t|
    t.integer "group_id", null: false
    t.integer "team_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id", "team_id"], name: "index_groups_teams_on_group_id_and_team_id", unique: true
    t.index ["group_id"], name: "index_groups_teams_on_group_id"
  end

  create_table "langs", force: :cascade do |t|
    t.string "key", null: false
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leagues", force: :cascade do |t|
    t.string "key", null: false
    t.string "title", null: false
    t.integer "country_id"
    t.boolean "club", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_leagues_on_country_id"
  end

  create_table "logs", force: :cascade do |t|
    t.string "msg", null: false
    t.string "level", null: false
    t.string "app"
    t.string "tag"
    t.integer "pid"
    t.integer "tid", limit: 8
    t.string "ts"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "metros", force: :cascade do |t|
    t.string "name", null: false
    t.string "key", null: false
    t.integer "place_id", null: false
    t.string "code"
    t.string "alt_names"
    t.integer "country_id", null: false
    t.integer "pop"
    t.integer "area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_metros_on_country_id"
    t.index ["place_id"], name: "index_metros_on_place_id"
  end

  create_table "munis", force: :cascade do |t|
    t.string "name", null: false
    t.string "key", null: false
    t.integer "place_id", null: false
    t.string "code"
    t.string "abbr"
    t.string "iso"
    t.string "nuts"
    t.string "alt_names"
    t.integer "state_id", null: false
    t.integer "county_id"
    t.integer "level", default: 3, null: false
    t.integer "pop"
    t.integer "area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["county_id"], name: "index_munis_on_county_id"
    t.index ["place_id"], name: "index_munis_on_place_id"
    t.index ["state_id"], name: "index_munis_on_state_id"
  end

  create_table "names", force: :cascade do |t|
    t.string "name", null: false
    t.integer "place_id", null: false
    t.string "place_kind", null: false
    t.string "lang", default: "en", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_id"], name: "index_names_on_place_id"
  end

  create_table "parts", force: :cascade do |t|
    t.string "name", null: false
    t.string "key", null: false
    t.integer "place_id", null: false
    t.string "code"
    t.string "abbr"
    t.string "iso"
    t.string "nuts"
    t.string "alt_names"
    t.integer "state_id", null: false
    t.integer "level", default: 2, null: false
    t.integer "pop"
    t.integer "area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_id"], name: "index_parts_on_place_id"
    t.index ["state_id"], name: "index_parts_on_state_id"
  end

  create_table "persons", force: :cascade do |t|
    t.string "key", null: false
    t.string "name", null: false
    t.string "synonyms"
    t.string "code"
    t.date "born_at"
    t.integer "city_id"
    t.integer "state_id"
    t.integer "country_id"
    t.integer "nationality_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_persons_on_city_id"
    t.index ["country_id"], name: "index_persons_on_country_id"
    t.index ["nationality_id"], name: "index_persons_on_nationality_id"
    t.index ["state_id"], name: "index_persons_on_state_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "name", null: false
    t.string "kind", null: false
    t.float "lat"
    t.float "lng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "props", force: :cascade do |t|
    t.string "key", null: false
    t.string "value", null: false
    t.string "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rosters", force: :cascade do |t|
    t.integer "person_id", null: false
    t.integer "team_id", null: false
    t.integer "event_id"
    t.integer "pos", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_rosters_on_event_id"
    t.index ["person_id"], name: "index_rosters_on_person_id"
    t.index ["team_id"], name: "index_rosters_on_team_id"
  end

  create_table "rounds", force: :cascade do |t|
    t.integer "event_id", null: false
    t.string "title", null: false
    t.string "title2"
    t.integer "pos", null: false
    t.boolean "knockout", default: false, null: false
    t.date "start_at", null: false
    t.date "end_at"
    t.boolean "auto", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_rounds_on_event_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.string "key", null: false
    t.string "title", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "name", null: false
    t.string "key", null: false
    t.integer "place_id", null: false
    t.string "code"
    t.string "abbr"
    t.string "iso"
    t.string "nuts"
    t.string "alt_names"
    t.integer "country_id", null: false
    t.integer "level", default: 1, null: false
    t.integer "pop"
    t.integer "area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_states_on_country_id"
    t.index ["key", "country_id"], name: "index_states_on_key_and_country_id", unique: true
    t.index ["place_id"], name: "index_states_on_place_id"
  end

  create_table "taggings", force: :cascade do |t|
    t.integer "tag_id", null: false
    t.string "taggable_type", null: false
    t.integer "taggable_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["taggable_id", "taggable_type", "tag_id"], name: "index_taggings_on_taggable_id_and_taggable_type_and_tag_id", unique: true
    t.index ["taggable_id", "taggable_type"], name: "index_taggings_on_taggable_id_and_taggable_type"
  end

  create_table "tags", force: :cascade do |t|
    t.string "key", null: false
    t.string "slug", null: false
    t.string "name"
    t.integer "grade", default: 1, null: false
    t.integer "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["key"], name: "index_tags_on_key", unique: true
    t.index ["parent_id"], name: "index_tags_on_parent_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "key", null: false
    t.string "title", null: false
    t.string "title2"
    t.string "code"
    t.string "synonyms"
    t.integer "country_id", null: false
    t.integer "city_id"
    t.boolean "club", default: false, null: false
    t.integer "since"
    t.string "address"
    t.string "web"
    t.integer "assoc_id"
    t.boolean "national", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assoc_id"], name: "index_teams_on_assoc_id"
    t.index ["city_id"], name: "index_teams_on_city_id"
    t.index ["country_id"], name: "index_teams_on_country_id"
    t.index ["key"], name: "index_teams_on_key", unique: true
  end

  create_table "usages", force: :cascade do |t|
    t.integer "country_id", null: false
    t.integer "lang_id", null: false
    t.boolean "official", default: true, null: false
    t.boolean "minor", default: false, null: false
    t.float "percent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_usages_on_country_id"
    t.index ["lang_id"], name: "index_usages_on_lang_id"
  end

  create_table "zones", force: :cascade do |t|
  end

end
