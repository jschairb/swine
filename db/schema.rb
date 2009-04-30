# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090430010644) do

  create_table "tweets", :force => true do |t|
    t.string   "text"
    t.string   "from_user"
    t.integer  "from_user_id"
    t.integer  "to_user_id"
    t.string   "to_user"
    t.integer  "status_id"
    t.string   "source"
    t.string   "iso_language_code"
    t.datetime "status_created_at"
    t.string   "profile_image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
