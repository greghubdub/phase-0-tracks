def greeting 
	puts "Hello!"
	yield("greg")
end

greeting { |name| puts "How's it going #{name}"}


my_array = [1,2,3,4]

my_hash = { 
	Patriots:"New england",
	Cardinals:"Arizona",
	Panthers: "Carolina"
}

puts "Using .each with an array:"

my_array.each do |x|
  	p x
end

puts "Using .map! with an array"

my_array.map! do |x|
   p x.next
end

puts "Using .each with a hash:"

my_hash.each do |mascot,location|
	puts "the #{mascot} are from #{location}"
end

puts "Release 2:"

# Deletes the last value from the array
my_array.pop


# Select only odd integers
my_array.select do |x|
	x.odd?
end

# Select if number less than 7
my_array.take_while do |x|
	x < 2
end

# Deletes anything less than 2
my_array.delete_if do|x|
	 x < 2
end