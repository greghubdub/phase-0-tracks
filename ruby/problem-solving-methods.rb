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

p search_array([5, 4, 3, 2], 3)

# Release 1

