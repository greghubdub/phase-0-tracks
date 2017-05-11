# make a class

# method initialize(word)
	# @word = word
	# @feedback = "_" * word.length
	# @guess_count = 0
	# @is_over = false

# method check_guess
	# put each guess in an array
	# if !guess_array.include?(guess)
		# @guess_count += 1
	# if word.include?(guess)
		# puts feedback with guess at correct index instead of "_"
	
class WordGame

	attr_accessor :word
	attr_accessor :feedback
	attr_writer :guess
	attr_reader :guess_count
	attr_reader :is_over

	def initialize(word)
		@word = word
		@word_array = word.split('')
		@guess_array = []
		@feedback = "_" * word.length
		@guess_count = 0
		@is_over = false
	end

	def check_guess(guess)
		@guess = guess
		if !@guess_array.include? guess
			@guess_count += 1
		end
		@guess_array << guess
		@word_array.length.times do |i|
			if @word_array[i] == guess
				@feedback[i] = guess
			end
		end
		@feedback
	end

	def check_is_over
		
		if @guess_count == word.length * 2 || @feedback == @word
			@is_over = true
		else
			false
		end
		@is_over
	end

end

# user interface

puts "Come one, come all, and seek thy for-tune in the Word Game!!!"

game = WordGame.new("turtles")

while game.check_is_over == false
	puts "Please guess a letter in the mystery word"
	guess = gets.chomp
	if !game.check_guess(guess)
		puts "Nope! Try again."
	end
	p game.feedback
#	p game.guess_count
end

if game.feedback == game.word
	puts "You've won! The word is #{game.word.upcase} and the world is YOURS!!!"
else
	puts "May your soul find no solace for all eternity - YOU LOSE"
end
