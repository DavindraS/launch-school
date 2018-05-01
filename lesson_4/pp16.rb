flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each do |name|
  name = name.delete_suffix!(name.byteslice(2, name.length))
end

p flintstones
