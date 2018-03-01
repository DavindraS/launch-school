vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurences(vehicle_array)
  count = Hash.new
  vehicle_array.each do |element|
    count[element] = vehicle_array.find_all {|i| i == element}.count
  end

  count.each{|key, value| puts "#{key} => #{value}"}
end

count_occurences(vehicles)
