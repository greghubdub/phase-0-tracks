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
	attr_reader :guess_count
	attr_reader :is_over

	def initialize(word)
		@word = word
		@feedback = "_" * word.length
		@guess_count = 0
		@is_over = false
	end

	def check_guess

	end

end

# user interface

puts "Come one, come all, and seek thy fourtune in the Word Game!!!"

game = WordGame.new