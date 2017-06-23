# create_table "advisors", force: :cascade do |t|
#   t.string "name"
#   t.date "date"
#   t.time "start_time"
#   t.time "end_time"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false

class Advisor < ApplicationRecord
  has_many :bookings
  has_many :user, through: :bookings
end
