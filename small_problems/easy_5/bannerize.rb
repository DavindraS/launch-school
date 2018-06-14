# write a method to take a short line of text and print it in a box
def print_in_box(str)
  puts '+' + '-' * str.size + '+'
  puts '|' + ' ' * str.size + '|'
  puts '|' + str + '|'
  puts '|' + ' ' * str.size + '|'
  puts '+' + '-' * str.size + '+'
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
