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
