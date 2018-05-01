# Turn this array into hash {name: position}
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flint_hash = flintstones.each_with_object({}) do |name, hash|
  hash[name] = flintstones.index(name)
end

p flint_hash
