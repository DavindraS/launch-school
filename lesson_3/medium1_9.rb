def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

# paper would be the result
# 1st evaluation rps('rock', paper) = paper
# 2nd evaluation rps('rock', 'scissors') = rock
# 3rd evaluation rps(paper, rock) = paper
# last evaluation rps (paper, rock) = paper
