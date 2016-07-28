
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

def add_item(list, item, quantity)
  list[item] = quantity  
  list
end


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

def update_quantity(list, item, quantity)
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