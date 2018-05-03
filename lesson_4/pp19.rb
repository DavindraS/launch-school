# write my own version of titleize..how are you to How Are You

words = "the flintstones rock"

titleize = words.split(" ").each{|word| word.capitalize!}.join(" ")

p titleize
