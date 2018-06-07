def uuid_generator
  uuid = ''
  letters = 'abcdef'
  numbers = '0123456789'
  uuid_format = [8, 4, 4, 4, 12]
  uuid_format.each do |num|
    num.times do
      random_anchor = rand(2)
      if random_anchor == 1
        uuid << numbers.chars.sample
      else
        uuid << letters.chars.sample
      end
    end
    uuid << '-' unless num == uuid_format.last
  end
  uuid
end

p uuid_generator
