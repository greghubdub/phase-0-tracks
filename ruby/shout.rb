=begin

module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
  	"YES!!!" + words + "!!1!!!!1!! :D"
  end
end

puts Shout.yell_angrily("Aw, no! Not on the GOLF CART")

puts Shout.yelling_happily("Zumbaa")

=end

module Shout
	def yell_angrily(words)
		puts "Ahhh NO NO NO!!! #{words.upcase}!!!!!!!"
	end

	def yelling_happily(words)
		puts "YEEESSSS!!! Finally! #{words.upcase}!!!!!!!!!!"
	end
end

class Dad
	include Shout
end

class Teacher
	include Shout
end

dad = Dad.new
dad.yelling_happily("The bees are extinct")

teacher = Teacher.new
teacher.yell_angrily("i before e except, ah, whatever")

