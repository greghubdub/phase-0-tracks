# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  # get string from user
  # convert string into array grocery_list
  # iterate over array, map to new hash with default quantity
  # set default quantity: 1 in quantity_list
  # print the list to the console [can you use one of your other methods here?]
# output: hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: list is the hash
	# 2 arguments(item, opt quant)
	# push
# output: print the updated hash

# Method to remove an item from the list
# input: key/item name (str)
# steps: use delete method on desired item
# output: print the updated hash

# Method to update the quantity of an item
# input: 2 arguments(int, item)
# steps: search in loop for item, replace w/ int
# output: 
	# new quantity
	# print the updated hash

# Method to print a list and make it look pretty
# input: hash
# steps: loop thru hash, puts "#{key} - #{value}"
# output: pretty list





def create_list(item)
	grocery_list = {}
	item_list = item.split(' ')
	item_list.each do |grocery|
		grocery_list[grocery] = 1
	end
	grocery_list
end

def add_item(groceries, new_item, quantity = 1)
	groceries[new_item] = quantity
	groceries
end

def remove_item(groceries, new_item)
	groceries.each do |grocery, amount|
		if grocery == new_item
			groceries.delete(grocery)
		end
	end
end

def update_quantity(groceries, new_item, quantity = 1)
	groceries.each do |grocery, amount| 
		if grocery == new_item
			groceries[grocery] = amount - quantity
		end
	end
end

def pretty_list(groceries)
	groceries.each do |grocery, amount|
		puts "Here are the groceries we need:"
		puts "#{grocery} - #{amount}"
	end
end

our_list = create_list("apple salsa chips cheese")

p our_list

add_item(our_list, "raisins", 5)

p our_list

remove_item(our_list, "apple")

p our_list

update_quantity(our_list, "raisins", 2)

p our_list

pretty_list(our_list)

p our_list