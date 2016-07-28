
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create grocery_list hash 
  # split the string by spaces
  # iterate through array to set default value
  # set default quantity to 1
  # print the list to the console [can you use one of your other methods here?]
  # call upon print_list method
# output: [what data type goes here, array or hash?] -- Hash

# this is the global scope

# fruits = ['carrots', 'apples']
# fruits[0] returns 'carrots'

# items = {'carrots' => 1, 'apples' => 1}
# items['carrots'] return 1

  
def create_list(str = "")
  # this is the local scope of the create_list method
  grocery_list = {}
  keys = str.split(' ')
  keys.each do |items|
    grocery_list[items] = 1
  end
  grocery_list
end

# test_empty_list = create_list
# p test_empty_list
  
# grocery_list = create_list(str)

# Method to add an item to a list
# input: hash name, item name and optional quantity
# steps: specify the hash we're adding to. Push new data into the hash.
# output: hash with new added key and value

# def add_item(list, item, quantity)
#  list[item] = quantity  
#  list
# end


# p add_item(grocery_list, "milk", 2)

# Method to remove an item from the list
# input: hash, key
# steps: 
  # does hash include key? If yes, delete, otherwise, no effect
  # call delete on the hash with the specific key. 
# output: updated hash key deleted

def remove_item(list, item)
  if list.include?(item)
    list.delete(item)
  else
    puts "Item not in list"
  end
  list
end


# Method to update the quantity of an item
# input: hash name, item name, and new quantity
# steps: specify the hash we're updating, specify the key to be changed, pushing new value to the key.
# output: updated hash with new quantity

def update_item(list, item, quantity)
  list[item] = quantity
  list
end


# Method to print a list and make it look pretty
# input: hash
# steps: iterate the hash, use interpolation with each iteration for sentence.
# output: a sentence with the item and the quantity

def print_list(list)
  list.each do |item, quantity|
    puts "You need to get #{quantity} #{item}."
  end
end

=begin
# DRIVER CODE
str = "carrots apples cereal pizza"
grocery_list = create_list(str)
p grocery_list
add_item(grocery_list, "milk", 2)
p grocery_list
remove_item(grocery_list, "carrots")
p grocery_list
update_quantity(grocery_list, "milk", 5)
p grocery_list
print_list(grocery_list)
=end

=begin
# Release 3
new_list = create_list
p new_list
add_item(new_list, "lemonade", 2)
add_item(new_list, "tomatoes", 3)
add_item(new_list, "onions", 1)
add_item(new_list, "ice cream", 4)
p new_list
remove_item(new_list, "lemonade")
p new_list
update_quantity(new_list, "ice cream", 1)
p new_list
p print_list(new_list)
=end

# Release 4:
# Refactoring:
# update and add item were interchangeable so we got rid of add_item
refactored_list = create_list
update_item(refactored_list, "peaches", 2)
p refactored_list
update_item(refactored_list, "honey", 1)
p refactored_list
update_item(refactored_list, "peaches", 10)
p refactored_list 
remove_item(refactored_list, "honey")
p refactored_list


# Reflection
=begin
What did you learn about pseudocode from working on this challenge?
	I learned that pseudocode can make writing the actual code a lot easier. It is a way to organize your thoughts on the best way to write it to make sure you understand the problem as well as know how to address it.
What are the tradeoffs of using arrays and hashes for this challenge?
	Arrays allow you to keep a group of items all stored together, but hashes allow you to provide a value to the items you're storing. When creating a list where you are tracking the quantity of items, a hash allows you to keep the two together.
What does a method return?
	A method returns a value after performing a set of steps on an input.
What kind of things can you pass into methods as arguments?
	You can pass in array, hashes, strings, integers
How can you pass information between methods?
	You can return a value. Another way is to set a variable equal to the value of the method. The variable would then contain the information from one array. You can then use that variable in a different method.
What concepts were solidified in this challenge, and what concepts are still confusing?
	Understanding input and output from methods has definitely been one of the areas I've been struggling to understand. This definitely helped me to understand how to pass information between the two. 
	Another area I think I could use more practice and understanding is initializing hashes. I still have some uncertainty when it comes to that.

=end
	