info_form = {}

p info_form

puts "Client Intake Information Form"

puts "Please enter the following client details:"

# name: get name

puts "Name"

info_form[:name] = gets.chomp

p info_form

# age: get age (to_i)

puts "Age"

info_form[:age] = gets.chomp

p info_form

# number of children: get number of children (to_i)

puts "Number of children"

info_form[:children] = gets.chomp

p info_form

# number of rooms in house: get number of rooms (to_i)

puts "Number of rooms in the home"

info_form[:rooms] = gets.chomp

p info_form

# decor theme: get decor theme

puts "Decor theme"

info_form[:decor_theme] = gets.chomp

# reflooring: boolean

puts "Is reflooring needed?"

refloor = gets.chomp

if refloor.downcase == "y" || refloor.downcase == "yes" || refloor.downcase == "yeah"
	info_form[:reflooring] = true
elsif refloor.downcase == "n" || refloor.downcase == "no" || refloor.downcase == "nope"
	info_form[:reflooring] = false
else
	info_form[:reflooring] = false
end

p info_form[:reflooring]

p info_form

# update key? if "none", move on. If user enters key symbol, get new value and update key with it

# how to turn symbol into string?

puts "Please enter any client data category you might need to update. If finished, type 'none'"

update_key = gets.chomp

if update_key == "none"
	p info_form
else
	puts "What is the new information for #{update_key}?"
	update_value = gets.chomp
	update_key = update_key.to_sym
	if info_form.has_key?(update_key)
		info_form[update_key] = update_value
	end
end

info_form[:age] = info_form[:age].to_i

info_form[:children] = info_form[:children].to_i

info_form[:rooms] = info_form[:rooms].to_i

p info_form
