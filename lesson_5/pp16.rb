def uuid_generator
  uuid = ''
  letters = 'abcdefghijklmnopqrstuvwxyz'
  numbers = '0123456789'
  8.times do
    random_anchor = rand(2)
    if random_anchor == 1
      uuid << numbers.chars.sample
    else
      uuid << letters.chars.sample
    end
  end
  uuid << '-'
  4.times do
    random_anchor = rand(2)
    if random_anchor == 1
      uuid << numbers.chars.sample
    else
      uuid << letters.chars.sample
    end
  end
  uuid << '-'
  4.times do
    random_anchor = rand(2)
    if random_anchor == 1
      uuid << numbers.chars.sample
    else
      uuid << letters.chars.sample
    end
  end
  uuid << '-'
  4.times do
    random_anchor = rand(2)
    if random_anchor == 1
      uuid << numbers.chars.sample
    else
      uuid << letters.chars.sample
    end
  end
  uuid << '-'
  12.times do
    random_anchor = rand(2)
    if random_anchor == 1
      uuid << numbers.chars.sample
    else
      uuid << letters.chars.sample
    end
  end
  p uuid
end

uuid_generator
