class Santa
	attr_reader :ethnicity, :reindeer_ranking, :age
	attr_accessor :gender

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def celebrate_birthday(new_age)
		@age = new_age
	end

	def get_mad_at(reindeer)
		reindeer_ranking.insert(-1, reindeer_ranking.delete_at(reindeer_ranking.index(reindeer)))
	end

end

saint_nick = Santa.new("gender fluid", "Inuit")

saint_nick.eat_milk_and_cookies("lemon bar")

saint_nick.speak

santas = []

santas << Santa.new("female", "Pacific Islander")

santas << Santa.new("male", "Reptilian")

santas << Santa.new("female", "Latina")

santas << Santa.new("male", "unspecified")

example_genders = ["agender", "bigender", "gender fluid", "female", "male", "starchild"]

example_ethnicities = ["black", "Latino", "white", "Samoan", "grey", "Australian aboriginal"]

example_genders.length.times do |x|
	santas << Santa.new(example_genders[x], example_ethnicities[x])
end

example_cookies = ["chocolate chip cookie", "monkey bar", "biscuit", "digestive", "brownie", "toffee cookie"]

example_cookies.length.times do |y|
	santas[y].eat_milk_and_cookies(example_cookies[y])
end

p saint_nick.age

saint_nick.celebrate_birthday(5)

p saint_nick.age

saint_nick.get_mad_at("Rudolph")

p saint_nick.reindeer_ranking

p saint_nick.gender

saint_nick.gender = "bro"

p saint_nick.gender

p saint_nick.ethnicity

400.times do |i|
	i = Santa.new(example_genders.sample, example_ethnicities.sample)
	i.celebrate_birthday(1 + rand(140))
	p i
end