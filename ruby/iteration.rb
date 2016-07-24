

#create method
# def method_block(str)
#   #print string
#   puts str
#   #yield block without parameters
#   yield
# end
# #run code with block; no parameters
# method_block("Hello there") {puts "Testing our block"}

def method_block(str)
  name1 = "Kimberly"
  name2 = "Greg"
  puts str
  yield(name1, name2)
end

puts method_block("Hello there") { |name1, name2| puts "Testing our block #{name1} and #{name2}"}


sports = ["basketball", "football", "soccer", "tennis", "volleyball", "baseball"]

food = {
  steak: 9,
  lobster: 9,
  pizza: 10,
  lima_beans: 1,
  broccoli: 8,
  chicken: 8
  }
#.each
sports.each { |sport| puts "We love to play #{sport.capitalize}!" }

food.each { |food, rank| puts "We rank #{food} as a #{rank} on a scale of 1-10." }

# #.map!
sports.map! { |sport| sport + "!" } 
puts sports

# #1. delete at a certain condition: ARRAY
# # a = [ "a", "b", "c" ]
# # a.delete_if {|x| x >= "b" }   #=> ["a"]
# #deleted if sport had "ball" in the element
sports.delete_if { |sport| sport.include?("ball") }
p sports

# # h = { "a" => 100, "b" => 200, "c" => 300 }
# # h.delete_if {|key, value| key >= "b" }
food.delete_if { |food, rank| rank < 5 }
p food

#2. Keep element if meets certain condition
# a = %w{ a b c d e f }
# a.keep_if {|v| v =~ /[aeiou]/}
sports.keep_if { |sport| sport.include?("ball") }
p sports

food.keep_if { |food, rank| rank > 8 }
p food

#.3 alternative way using select
sports.select do |sport| 
	if sport.include?("ball")
	puts sport
	end
end
puts sports

food.select do |food, rank| 
  if rank > 8
    puts food
  end
end
p food
.take_while

#4.


