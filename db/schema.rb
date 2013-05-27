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

ActiveRecord::Schema.define(:version => 20130527234645) do

  create_table "album_records", :force => true do |t|
    t.integer  "album_id"
    t.integer  "recording_id"
    t.integer  "order"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "album_records", ["album_id", "recording_id", "order"], :name => "index_album_records_on_album_id_and_recording_id_and_order"
  add_index "album_records", ["album_id", "recording_id"], :name => "index_album_records_on_album_id_and_recording_id", :unique => true
  add_index "album_records", ["album_id"], :name => "index_album_records_on_album_id"
  add_index "album_records", ["order"], :name => "index_album_records_on_order"
  add_index "album_records", ["recording_id"], :name => "index_album_records_on_recording_id"

  create_table "albums", :force => true do |t|
    t.integer  "artist_id"
    t.string   "name"
    t.date     "release_date"
    t.integer  "ranking"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "albums", ["artist_id"], :name => "index_albums_on_artist_id"

  create_table "albums_artists", :id => false, :force => true do |t|
    t.integer "artist_id"
    t.integer "album_id"
  end

  add_index "albums_artists", ["artist_id", "album_id"], :name => "index_albums_artists_on_artist_id_and_album_id", :unique => true

  create_table "artist_records", :force => true do |t|
    t.integer  "artist_id"
    t.integer  "recording_id"
    t.integer  "artist_roles_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "artist_records", ["artist_id", "recording_id"], :name => "index_artist_records_on_artist_id_and_recording_id"
  add_index "artist_records", ["artist_id"], :name => "index_artist_records_on_artist_id"
  add_index "artist_records", ["artist_roles_id"], :name => "index_artist_records_on_artist_roles_id"
  add_index "artist_records", ["recording_id"], :name => "index_artist_records_on_recording_id"

  create_table "artist_roles", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "artist_users", :force => true do |t|
    t.integer  "user_id"
    t.integer  "artist_id"
    t.integer  "user_role_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "artist_users", ["artist_id"], :name => "index_artist_users_on_artist_id"
  add_index "artist_users", ["user_id"], :name => "index_artist_users_on_user_id"
  add_index "artist_users", ["user_role_id"], :name => "index_artist_users_on_user_role_id"

  create_table "artists", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "recordings", :force => true do |t|
    t.string   "name"
    t.date     "release_date"
    t.integer  "ranking"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "user_albums", :force => true do |t|
    t.integer  "user_id"
    t.integer  "album_id"
    t.date     "purchase_date"
    t.date     "expires_date"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "user_albums", ["album_id"], :name => "index_user_albums_on_album_id"
  add_index "user_albums", ["user_id"], :name => "index_user_albums_on_user_id"

  create_table "user_recordings", :force => true do |t|
    t.integer  "user_id"
    t.integer  "recording_id"
    t.date     "purchase_date"
    t.date     "expires_date"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "user_recordings", ["recording_id"], :name => "index_user_recordings_on_recording_id"
  add_index "user_recordings", ["user_id"], :name => "index_user_recordings_on_user_id"

  create_table "user_roles", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
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
