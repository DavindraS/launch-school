print 'What is the bill? '
total = gets.chomp.to_f
print 'What is the tip percentage? '
tip_percentage = gets.chomp.to_f / 100
tip = total * tip_percentage
total_plus_tip = total + tip
puts "The tip is $#{'%.2f' % tip}"
puts "The total is $#{'%.2f' % total_plus_tip}"
