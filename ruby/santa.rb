class Santa

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def initialize
		puts "Initializing Santa instance..."
	end

end

saint_nick = Santa.new

saint_nick.eat_milk_and_cookies("lemon bar")

saint_nick.speak