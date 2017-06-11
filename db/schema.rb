ActiveRecord::Schema.define(version: 20170611024329) do

  create_table "posts", force: :cascade do |t|
    t.string   "Date"
    t.string   "title"
    t.text     "content"
    t.string   "author"
    t.string   "Time"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "admin"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
