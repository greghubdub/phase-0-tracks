# Release 0

def search_array(arr, num)
	count = 0
	arr.each do |x| 
		if x == num
			p count
		end
		count += 1
	end
end

search_array([5, 4, 3, 2], 4)

# Release 1	

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

fib(15)

# Release 2

# Bubble sort

# There is a visualization I found on wikipedia that really helps,
# showing the algorithm taking each pair at a time

# I'm somewhat overwhelmed, also excited to learn this!

# Pseudocode

# Have the code consider 0 and 1 index, compare value

# If larger value is in lower position, swap them

# Move on to 1 and 2 index and repeat. Continue until array is finished

def gregsort(arr)
	x = 0
	y = 1
	while y < arr.count do
		if arr[x] > arr[y]
			arr[x], arr[y] = arr[y], arr[x]
		end
		x += 1
		y += 1
	end
end

gregsort([7, 4, 3, 8, 10])




