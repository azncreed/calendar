class Advisor < ApplicationRecord
  # enum day:  [:monday, :tuesday, :wednesday, :thursday, :friday, :saturday]
  # enum start_time: [:0900, :1000, :1100, :1130, :1200, :1300, :1330, :1400]

  has_many :bookings
  has_many :user, through: :bookings

  # validate :day

  #  private
   #
  #  def day_start_times
  #     permissible_times: {monday: [:0900, :1000], tuesday: [:1200]}
  #     errors.add(:start_time, "Sorry, this time is unavailable on this day") unless permissible_times[day.to_sym].include? start_time
  #  end
end
