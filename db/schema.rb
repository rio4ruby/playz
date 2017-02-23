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

ActiveRecord::Schema.define(version: 20170222225921) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "resource_id",   limit: 255, null: false
    t.string   "resource_type", limit: 255, null: false
    t.integer  "author_id"
    t.string   "author_type",   limit: 255
    t.text     "body"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "namespace",     limit: 255
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_admin_notes_on_resource_type_and_resource_id", using: :btree
  end

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "albums", force: :cascade do |t|
    t.string   "name",                limit: 255, null: false
    t.integer  "album_dir_id",                    null: false
    t.integer  "album_artist_id"
    t.integer  "album_image_file_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.index ["album_dir_id", "name"], name: "index_albums_on_album_dir_id_and_name", unique: true, using: :btree
  end

  create_table "artists", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.string   "wikiname",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["name"], name: "index_artists_on_name", unique: true, using: :btree
  end

  create_table "audio_files", force: :cascade do |t|
    t.string   "filename",           limit: 255, null: false
    t.integer  "file_dir_id",                    null: false
    t.integer  "file_size",                      null: false
    t.datetime "file_modified_time",             null: false
    t.integer  "artist_id"
    t.integer  "album_id"
    t.integer  "song_id"
    t.integer  "genre_id"
    t.integer  "tracknum"
    t.integer  "bitrate"
    t.integer  "samplerate"
    t.float    "length"
    t.integer  "layer"
    t.integer  "mpeg_version"
    t.boolean  "vbr"
    t.integer  "audio_start"
    t.integer  "audio_length"
    t.string   "mime_type",          limit: 50,  null: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["album_id"], name: "index_audio_files_on_album_id", using: :btree
    t.index ["artist_id"], name: "index_audio_files_on_artist_id", using: :btree
    t.index ["file_dir_id", "filename"], name: "index_audio_files_on_file_dir_id_and_filename", unique: true, using: :btree
    t.index ["file_dir_id"], name: "index_audio_files_on_file_dir_id", using: :btree
    t.index ["genre_id"], name: "index_audio_files_on_genre_id", using: :btree
  end

  create_table "audio_files_tags", force: :cascade do |t|
    t.integer  "audio_file_id", null: false
    t.integer  "tag_id",        null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["audio_file_id", "tag_id"], name: "index_audio_files_tags_on_audio_file_id_and_tag_id", unique: true, using: :btree
  end

  create_table "file_dirs", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.string   "ancestry",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["name"], name: "index_file_dirs_on_name", unique: true, using: :btree
  end

  create_table "genres", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["name"], name: "index_genres_on_name", unique: true, using: :btree
  end

  create_table "image_files", force: :cascade do |t|
    t.string   "filename",           limit: 255, null: false
    t.integer  "file_dir_id",                    null: false
    t.datetime "file_modified_time",             null: false
    t.string   "format",             limit: 255, null: false
    t.integer  "columns",                        null: false
    t.integer  "rows",                           null: false
    t.integer  "depth",                          null: false
    t.integer  "number_colors",                  null: false
    t.integer  "filesize",                       null: false
    t.float    "x_resolution",                   null: false
    t.float    "y_resolution",                   null: false
    t.string   "units",              limit: 255
    t.string   "mime_type",          limit: 50,  null: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["file_dir_id", "filename"], name: "index_image_files_on_file_dir_id_and_filename", unique: true, using: :btree
  end

  create_table "list_heads", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name",       limit: 255,                 null: false
    t.boolean  "is_playing",             default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.index ["user_id", "name"], name: "index_list_heads_on_user_id_and_name", unique: true, using: :btree
  end

  create_table "list_nodes", force: :cascade do |t|
    t.string   "ancestry",       limit: 255
    t.integer  "ancestry_depth"
    t.integer  "position"
    t.integer  "listable_id",                null: false
    t.string   "listable_type",  limit: 255, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["listable_id", "listable_type"], name: "index_list_nodes_on_listable_id_and_listable_type", using: :btree
  end

  create_table "lyrics", force: :cascade do |t|
    t.string   "l_artist",   limit: 255
    t.string   "l_song",     limit: 255
    t.text     "text",                   null: false
    t.string   "l_url",      limit: 500
    t.integer  "artist_id",              null: false
    t.integer  "song_id",                null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["artist_id", "song_id"], name: "index_lyrics_on_artist_id_and_song_id", unique: true, using: :btree
  end

  create_table "pages", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.integer  "resource_id"
    t.string   "resource_type", limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
    t.index ["name"], name: "index_roles_on_name", using: :btree
  end

  create_table "songs", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["name"], name: "index_songs_on_name", unique: true, using: :btree
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name",       limit: 4,   null: false
    t.string   "value",      limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["name", "value"], name: "index_tags_on_name_and_value", unique: true, using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "name",                   limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree
  end

  add_foreign_key "albums", "artists", column: "album_artist_id", name: "albums_album_artist_id_fk"
  add_foreign_key "albums", "file_dirs", column: "album_dir_id", name: "albums_album_dir_id_fk"
  add_foreign_key "albums", "image_files", column: "album_image_file_id", name: "albums_album_image_file_id_fk"
  add_foreign_key "audio_files", "albums", name: "audio_files_album_id_fk"
  add_foreign_key "audio_files", "artists", name: "audio_files_artist_id_fk"
  add_foreign_key "audio_files", "file_dirs", name: "audio_files_file_dir_id_fk"
  add_foreign_key "audio_files", "genres", name: "audio_files_genre_id_fk"
  add_foreign_key "audio_files", "songs", name: "audio_files_song_id_fk"
  add_foreign_key "audio_files_tags", "audio_files", name: "audio_files_tags_audio_file_id_fk", on_delete: :cascade
  add_foreign_key "audio_files_tags", "tags", name: "audio_files_tags_tag_id_fk", on_delete: :cascade
  add_foreign_key "image_files", "file_dirs", name: "image_files_file_dir_id_fk"
  add_foreign_key "list_heads", "users", name: "list_heads_user_id_fk"
  add_foreign_key "lyrics", "artists", name: "lyrics_artist_id_fk"
  add_foreign_key "lyrics", "songs", name: "lyrics_song_id_fk"
end
