# create_table "advisors", force: :cascade do |t|
#   t.string "name"
#   t.date "date"
#   t.time "start_time"
#   t.time "end_time"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false

class Advisor < ApplicationRecord
  serialize :recurring, Hash
  has_many :bookings
  has_many :user, through: :bookings


  def recurring=(value)
    if value == "null"
      super(nil)
    elsif RecurringSelect.is_valid_rule?(value)
      super(RecurringSelect.dirty_hash_to_rule(value).to_hash)
    else
      super(nil)
    end
  end


  # def recurring=(value)
  #   if RecurringSelect.is_valid_rule?(value)
  #     super(RecurringSelect.dirty_hash_to_rule(value).to_hash)
  #   else
  #     super(nil)
  #   end
  # end

end
