# Release 0

# get name

letters_alias = (('b'..'z').to_a + ['a']).join('')

original_array = []

alias_array = []

puts 'Please enter name'

original_name = gets.chomp.downcase

while original_name != "quit" do

	original_array << original_name
	alias_name = original_name.tr('a-z', letters_alias)
	puts alias_name
	alias_array << alias_name
	original_name = gets.chomp.downcase

end

# p original_array

# p alias_array

# p original_array[0]

x = 0

until x == original_array.count
	puts "#{alias_array[x]} is actually #{original_array[x]}"
	x += 1
end

puts "Mission debriefed"


=begin

My original work below. I had to find a simpler aliasing method and move on instead of using it

# split name into array with names as elements

names_array = original_name.split(' ')

p names_array

# swap names

names_array.reverse!

p names_array

# back to string

swapped_name = names_array.join('')

p swapped_name

# split swapped name into array with letters as elements

letters_array = swapped_name.split('')

p letters_array

# downcase

# create a method that gives next vowel


vowel_ref = ['a', 'e', 'i', 'o', 'u']

letters_array.select do |x|
	if letters_array.include?(vowel_ref(x))
		letters_array.map { |y| y == vowel_ref(x) ? }
	end
end

p letters_array

def vowel

end

# create a method that gives next consonant

# handle edge cases

# back to string



=end