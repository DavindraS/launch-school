# Turn this array into hash {name: position}
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flint_hash_1 = flintstones.each_with_object({}) do |name, hash|
  hash[name] = flintstones.index(name)
end

# another way based on official answer
flint_hash_2 = {}
flintstones.each_with_index do |name, index|
  flint_hash_2[name] = index
end

p flint_hash_1
p flint_hash_2
