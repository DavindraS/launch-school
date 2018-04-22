number = 0

until number == 10
  number += 1
  number.odd? ? next : (puts number)
end
