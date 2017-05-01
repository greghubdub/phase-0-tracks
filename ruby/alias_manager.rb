# Release 0

# get name

puts 'Please enter name'

original_name = gets.chomp

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
	vowel_ref.include?(x)
end

def vowel

end

# create a method that gives next consonant

# handle edge cases

# back to string