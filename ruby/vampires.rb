puts "Query: number of employees to be processed?"

employee_number = gets.chomp.to_i

interview_number = 0

while interview_number < employee_number

	probably_not_a_vampire = false

	probably_a_vampire = false

	almost_certainly_a_vampire = false

	definitely_a_vampire = false

	puts "What is your name?"

	my_name = gets.chomp

	puts "How old are you?"

	my_age = gets.chomp.to_i

	puts "What year were you born?"

	my_birth_year = gets.chomp.to_i

	puts "Our company cafeteria serves garlic bread. Should we order some for you? y/n"

	want_garlic = gets.chomp

	puts "Would you like to enroll in the company's health insurance? y/n"

	want_insurance = gets.chomp

	puts "Please list any applicable allergies one at a time"

	while allergy != "sunshine"
		allergy = gets.chomp
	end

	if ((my_age == 2017 - my_birth_year) || (my_age == 2017 - (my_birth_year + 1))) && (want_insurance == 'y' || want_garlic == 'y')
		probably_not_a_vampire = true
	end

	if ((my_age != 2017 - my_birth_year) && (my_age != 2017 - (my_birth_year + 1))) && (want_insurance == 'n' || want_garlic == 'n')
		probably_a_vampire = true
	end

	if ((my_age != 2017 - my_birth_year) && (my_age != 2017 - (my_birth_year + 1))) && want_garlic == 'n' && want_insurance == 'n'
		almost_certainly_a_vampire = true
	end

	if my_name == 'Drake Cula' || my_name == 'Tu Fang'
		probably_not_a_vampire = false
		definitely_a_vampire = true
	end

	interview_result = case
		when probably_not_a_vampire then "Probably not a vampire"
		when probably_a_vampire then "Probably a vampire"
		when almost_certainly_a_vampire then "Almost certainly a vampire"
		when definitely_a_vampire then "Definitely a vampire"
		else "Results inconclusive"
	end

	puts interview_result

	interview_number += 1

end
