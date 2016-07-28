
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


# Method to add an item to a list
# input: hash name, item name and optional quantity
# steps: specify the hash we're adding to. Push new data into the hash.
# output: hash with new added key and value


# Method to remove an item from the list
# input: hash, key
# steps: 
  # does hash include key? If yes, delete, otherwise, no effect
  # call delete on the hash with the specific key. 
# output: updated hash key deleted

# Method to update the quantity of an item
# input: hash name, item name, and new quantity
# steps: specify the hash we're updating, specify the key to be changed, pushing new value to the key.
# output: updated hash with new quantity


# Method to print a list and make it look pretty
# input: hash
# steps: iterate the hash, use interpolation with each iteration for sentence.
# output: a sentence with the item and the quantity