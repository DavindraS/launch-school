# take a 24 hour time and create two methods to return minutes before
# and after midnight
MINS_PER_HOUR = 60

def after_midnight(time)
  hour, minute = time.split(':').map{ |str| str.to_i }
  (hour * MINS_PER_HOUR % 1440) + minute
end

def before_midnight(time)
  hour, minute = time.split(':').map{ |str| str.to_i }
  (hour * MINS_PER_HOUR % 1440) - minute
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
