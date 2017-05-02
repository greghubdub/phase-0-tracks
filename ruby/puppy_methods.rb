class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def rollover
  	puts "*rolls over*"
  end

  def dogyears(hyrs)
  	hyrs * 7
  end

  def shake(name)
  	if name == "doggo"
  		puts "*shakes paw*"
  	else
  		puts "Arf?"
  	end
  end

  def speak(int)
	int.times do 
	puts "Woof!"
	end
  end

end

doggo = Puppy.new

doggo.fetch("ball")

doggo.speak(4)

doggo.rollover

puts doggo.dogyears(5)

doggo.shake("fido")

doggo.shake("doggo")

