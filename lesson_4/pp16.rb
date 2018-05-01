flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each do |name|
  name = name.delete_suffix!(name.byteslice(2, name.length))
end

p flintstones

=begin
book answer
flintstones.map! do |name|
  name[0, 3]
end
=end 
