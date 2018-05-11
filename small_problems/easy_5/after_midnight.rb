# take time as minute and return as 24 hour time (hh:mm)
MINUTES_PER_DAY = 1440
def time_of_day(minutes)
=begin
  time = ''
  hour = 0
  minutes_left = 0
  backwards_minutes = 0

  if minutes < 1440 && minutes >= 0
    hour = minutes / 60
    minutes_left = minutes % 60
  elsif minutes > 1440
    hour = minutes / 1440
    minutes_left = minutes % 60
  elsif minutes < 0 && minutes > -1440
    backwards_minutes = 1440 + minutes
    hour = backwards_minutes / 60
    minutes_left = backwards_minutes % 60
  else
    backwards_minutes = 1440 + minutes
    hour = backwards_minutes / 1440
    minutes_left = backwards_minutes % 60
  end

  if hour < 10
    hour_string = "0#{hour}"
  else
    hour_string = "#{hour}"
  end

  if minutes_left < 10
    minute_string = "0#{minutes_left}"
  else
    minute_string = "#{minutes_left}"
  end

  time = "#{hour_string}:#{minute_string}"
  p time
=end

  mins_after_midnight = minutes % MINUTES_PER_DAY
  hour, minute = mins_after_midnight.divmod(60)

  hour = "0#{hour}" if hour < 10
  minute = "0#{minute}" if minute < 10

  p "#{hour}:#{minute}"
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"
