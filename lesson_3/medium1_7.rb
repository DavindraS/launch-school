answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# my answer before running: 34
# reason: the method does not affect the answer variable
