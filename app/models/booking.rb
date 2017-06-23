# create_table "bookings", force: :cascade do |t|
#   t.string "name"
#   t.string "email"
#   t.integer "phone"
#   t.date "date"
#   t.time "time"
#   t.bigint "user_id"
#   t.bigint "advisor_id"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
#   t.index ["advisor_id"], name: "index_bookings_on_advisor_id"
#   t.index ["user_id"], name: "index_bookings_on_user_id"



class Booking < ApplicationRecord
  include IceCube

  belongs_to :user
  belongs_to :advisor
end
