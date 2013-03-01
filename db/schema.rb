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

ActiveRecord::Schema.define(:version => 20130228095523) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ckeditor_assets", :force => true do |t|
    t.string   "data_file_name",                  :null => false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    :limit => 30
    t.string   "type",              :limit => 30
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], :name => "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], :name => "idx_ckeditor_assetable_type"

  create_table "comments", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.text     "body"
    t.integer  "post_id"
    t.integer  "rating"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comments", ["post_id"], :name => "index_comments_on_post_id"

  create_table "layouts", :force => true do |t|
    t.string   "name"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "layouts", ["name"], :name => "index_layouts_on_name"

  create_table "links", :force => true do |t|
    t.string   "url"
    t.string   "title"
    t.string   "author"
    t.string   "email"
    t.text     "description"
    t.string   "keywords"
    t.integer  "rating"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "news", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "origins", :force => true do |t|
    t.string   "name"
    t.string   "host"
    t.string   "path"
    t.string   "token"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "page_parts", :force => true do |t|
    t.string   "name"
    t.text     "body"
    t.uuid     "page_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "handler"
  end

  add_index "page_parts", ["name"], :name => "index_page_parts_on_name"
  add_index "page_parts", ["page_id"], :name => "index_page_parts_on_page_id"

  create_table "pages", :force => true do |t|
    t.string   "name"
    t.string   "slug"
    t.string   "layout_name"
    t.string   "status"
    t.uuid     "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth",       :default => 0
    t.string   "location"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.text     "locales"
  end

  add_index "pages", ["location"], :name => "index_pages_on_location"
  add_index "pages", ["slug"], :name => "index_pages_on_slug"

  create_table "posts", :force => true do |t|
    t.integer  "type_id"
    t.integer  "section_id"
    t.string   "author"
    t.string   "email"
    t.string   "www"
    t.string   "source"
    t.string   "title"
    t.text     "body"
    t.text     "info"
    t.string   "keywords"
    t.integer  "rating"
    t.boolean  "public"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sections", :force => true do |t|
    t.string   "name"
    t.boolean  "lang"
    t.text     "description"
    t.integer  "num"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "snippets", :force => true do |t|
    t.string   "name"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "snippets", ["name"], :name => "index_snippets_on_name"

  create_table "sources", :force => true do |t|
    t.string   "name"
    t.string   "md5"
    t.string   "author"
    t.string   "email"
    t.string   "www"
    t.integer  "section_id"
    t.integer  "category_id"
    t.text     "description"
    t.integer  "rating"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "encrypted_password", :limit => 128
    t.string   "salt",               :limit => 128
    t.string   "confirmation_token", :limit => 128
    t.string   "remember_token",     :limit => 128
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email"
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
