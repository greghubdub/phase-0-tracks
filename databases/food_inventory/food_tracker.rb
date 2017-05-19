# FOOD INVENTORY AND GROCERY LIST DATABASE

# require gems
require 'sqlite3'

# database has tables for current inventory and grocery items to be picked up
db = SQLite3::Database.new("vittles.db")

# table for food inventory
create_inventory_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS inventory(
		id INTEGER PRIMARY KEY,
		product_general VARCHAR(255),
		product_specific VARCHAR(255),
		product_category VARCHAR(255),
		num_of_product INT,
		size_of_product VARCHAR(255)
	)
SQL

db.execute(create_inventory_cmd)

# table for grocery list
create_grocery_list_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS grocery_list(
		id INTEGER PRIMARY KEY,
		product_general VARCHAR(255),
		product_specific VARCHAR(255),
		product_category VARCHAR(255),
		num_of_product INT,
		size_of_product VARCHAR(255)
	)
SQL

db.execute(create_grocery_list_cmd)

# when a certain product_general is added to inventory, check grocery_list for same
# and ask user if they want to remove

# add test items
db.execute("INSERT INTO inventory (product_general, product_specific, product_category, 
	num_of_product, size_of_product) VALUES ('kipper snacks', 'King Oscar lightly smoked 
	herring fillets', 'canned fish', 1, '3.25 oz')")

# USER INTERFACE
# make it easy for user to add or remove items from either list

puts "Do you want to add an item to the grocery list or to the existing food inventory?"

which_list = gets.chomp

if which_list == 'grocery' || which_list == 'grocery list'
	add_grocery_list_item
elsif which_list == 'inventory' || which_list == 'food inventory' || which_list == 'existing'
	add_inventory_item
end

def add_grocery_list_item
	puts "Enter the general item name"
	new_general = gets.chomp
	puts "Enter the specific product name"
	new_specific = gets.chomp
	puts "Enter the product category"
	new_category = gets.chomp
	puts "Enter the number of items needed for this product"
	new_num_of_product = gets.chomp.to_i
	puts "Enter the size needed"
	new_size_of_product = gets.chomp
	db.execute("INSERT INTO grocery_list (product_general, product_specific, product_category,
		num_of_product, size_of_product) VALUES (new_general, new_specific, new_category, 
		new_num_of_product, new_size_of_product)")
	db.execute("SELECT * FROM grocery_list")
end

def add_inventory_item
	puts "Enter the general item name"
	new_general = gets.chomp
	puts "Enter the specific product name"
	new_specific = gets.chomp
	puts "Enter the product category"
	new_category = gets.chomp
	puts "Enter the number of items we have for this product"
	new_num_of_product = gets.chomp.to_i
	puts "Enter the size of the items"
	new_size_of_product = gets.chomp
	db.execute("INSERT INTO inventory (product_general, product_specific, product_category,
		num_of_product, size_of_product) VALUES (new_general, new_specific, new_category, 
		new_num_of_product, new_size_of_product)")
	db.execute("SELECT * FROM inventory")
end

