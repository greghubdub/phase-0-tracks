# Release 0
=begin
def search_array(arr, num)
	count = 0
	arr.each do |x| 
		if x == num
			p count
		end
		count += 1
	end
end

p search_array([5, 4, 3, 2], 3)

# Release 1
=end
#=begin
	

def fib(bit)
	fib_array = [0]
	h = 0
 	i = 1
 	j = 0
 	if bit >= 2
 		fib_array = [0, 1]
		until fib_array.count == bit
			j = h + i
			h = i
			i = j
			fib_array << j
		end
	end
p fib_array
end

fib(45)

#=end


