module Shout
  # we'll put some methods here soon, but this code is fine for now!
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
  	"YES!!!" + words + "!!1!!!!1!! :D"
  end
end

puts Shout.yell_angrily("Aw, no! Not on the GOLF CART")

puts Shout.yelling_happily("Zumbaa")