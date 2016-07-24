#Greg Garner and Logan Graves
#5.6 Pairing
#Code done in Coderpad

integers = [4, 10, 107, 34, 44]

h = [2, 17, 3, 9]

def search_arr(arr, x)
index = 0
  while index < arr.length
    if arr[index] == x
      return index
    end
    index += 1
  end
end


#p search_arr(h, 9)
    

=begin
  search our array for the last two values
  add them together to create a new value
  push that value into the array
  loop as many times as determined
=end

fib_100 = 218922995834555169026

def fib(number)
index = 0
  array = [0, 1]
    until array.length == number 
    array << array[index] + array[index + 1]
    index += 1
    end
  array.last
end

p fib(100)

if fib(100) == fib_100
  p "true"
else
  p "false"
end

#Bubble Sort

=begin
 An array is established
 The sort combs through the data
 Compares each adjacent piece data
 If condition is false
 Nonconditional data will be swapped to the correct order
 This loops through the array until no further swap can be made
=end

wrong = [3, 10, 5, 7, 2, 8, 9, 1, 4, 6]

=begin
  Sift through data until a condition is met.
  Swap values that have met the condition.
  Contiue the sift until another condition is met.
  Repeat this process until the condition is no longer met.
  Print the sorted data.
=end

def bubble_sort(arr)

  n = arr.length
  
  loop do
    
  swapped = false
  
  
    (n-1).times do |i|
      
      if arr[i] > arr[i + 1]
          arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
    break if not swapped
  end
  arr
end

p bubble_sort(wrong)

