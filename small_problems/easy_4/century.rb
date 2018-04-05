def century(year)
  century = 0
  loop do
    break if year <= 0
    year -= 100
    century += 1
  end
  if century.digits[1] == 1
    century.to_s << 'th'
  else
    case century.digits.first
    when 0 then century.to_s << 'th'
    when 1 then century.to_s << 'st'
    when 2 then century.to_s << 'nd'
    when 3 then century.to_s << 'rd'
    when 4 then century.to_s << 'th'
    end
  end
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'
