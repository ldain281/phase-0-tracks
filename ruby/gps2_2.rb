#gps2.2 Create and electronic grocery list
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [create list]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [hash]

def groceries(a)
	grocery_list = {}
	a.split(" ").each do |item|
	grocery_list[item] = 1
end
	print_list(grocery_list)
	grocery_list
end
# list = groceries("grapes carrots apples cereal pizza")


# Method to add an item to a list
# input: item to add and quantity
# steps: add to hash
# output: updated hash
def add_grocery(grocery_list, food, qty)
	grocery_list[food] = qty
	print_list(grocery_list)
end

# add_grocery(list, "melon", 1)
# Method to remove an item from the list
# input:item to remove and quantity
# steps: remove item from hash
# output: updated hash
def remove_grocery(grocery_list, food)
		grocery_list.delete(food)
		print_list(grocery_list)
	end
# remove_grocery(list, "pizza")


# Method to update the quantity of an item
# input: item's key to id quanity
# steps: update value
# output: updated hash item
def update_qty(grocery_list, food, qty)
	grocery_list[food] = qty
	print_list(grocery_list)
end
# update_qty(list, "melon", 3)

# Method to print a list and make it look pretty
# input: hash keys and values
# steps: access hash data, set up pretty print output
# output: hash data printed out

def print_list(grocery_list)
	puts "*************************"
	puts "Grocery List"
	grocery_list.each do |key, value|
	puts "#{key} #{value}"
	end
	p "*************************"
	end

# print_list(list)

list = groceries("")
add_grocery(list, "lemonade", 2)
add_grocery(list, "tomatoes", 3)
add_grocery(list, "onions", 1)
add_grocery(list, "ice cream", 4)
remove_grocery(list, "lemonade")
update_qty(list, "ice cream", 1)
print_list(list)

# COMMENTS
# What did you learn about pseudocode from working on this challenge?
#[LD] I learned breaking each method down fwith input, steps, output keeps me focused and not sidetracked
# What are the tradeoffs of using arrays and hashes for this challenge?
#[LD] while arrays have more options, hashes allows qty and items to stay together.
# What does a method return?
#[LD] the last output before "end"
# What kind of things can you pass into methods as arguments?
#[LD] strings, integers, variables, variables for arrays and hashes,  
# How can you pass information between methods?
#[LD] by calling the method name within another method
# What concepts were solidified in this challenge, and what concepts are still confusing?
#[LD] I solidified psudocoding, turning list into data structure, adding to hashes, communicating between methods, writing several corresponding methods, iterating through hashes
# still confusing: it makes sense, but still need to remember to create empty hash variable for driver code.
