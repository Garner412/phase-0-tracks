=begin
module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yelling_happily(words)
		words + "!!!" + " :)"
	end

end

#puts Shout("woohoo")
# puts self.yell_angrily("woohoo")
# puts self.yelling_happily("woohoo")

puts Shout.yell_angrily('Nooooo')
puts Shout.yelling_happily('woohoo')

=end

module Shout
	def screeching(words)
		puts "In a fit of rage, the yelling of #{words} can be heard from the neighboring area code!"
	end

	def hollaring(words)
		puts "I told you to #{words}"
	end
end


class Monkey
	include Shout
end

class Mother
	include Shout
end



mother = Mother.new
mother.screeching("get over here!!!")
mother.hollaring("do your chores!!")

monkey = Monkey.new
monkey.screeching("ooo ooo ahhh ahhh!")
monkey.hollaring("give me that banana!")