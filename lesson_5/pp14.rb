# Return an array with the colors of the fruit and the size of the vegies
# Size should be uppercase and color should be capitalized

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

solution = [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

my_result = []
hsh.each_value do |info|
  if info[:type] == 'fruit'
    my_result << info[:colors].map {|item| item.capitalize}
  elsif info[:type] == 'vegetable'
    my_result << info[:size].upcase
  end
end

p my_result
p my_result == solution

=begin
hsh.map do |_, value|
  if value[:type] == 'fruit'
    value[:colors].map do |color|
      color.capitalize
    end
  elsif value[:type] == 'vegetable'
    value[:size].upcase
  end
end
=end
