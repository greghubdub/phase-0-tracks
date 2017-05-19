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
		num_of_product INT,
		size_of_product INT,

	)
SQL

# table for grocery list

# when a certain product_general is added to inventory, check grocery_list for same
# and ask user if they want to remove

# add test items

# make it easy for user to add or remove items from either list

