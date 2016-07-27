class Santa
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
	end

	#add 1 to age
	def celebrate_birthday
		@age += 1
	end
	#move reindeer to end of array
	def get_mad_at(reindeer_name)
		@reindeer_ranking.push(reindeer_name)
	end
	#change the gender of santa
	def gender=(new_gender)
		@gender = new_gender
	end

	#return age variable
	def age
		@age
	end
	#return ethnicity variable
	def ethnicity
		@ethnicity
	end

	#
	def about
		puts "Your gender is #{@gender}!"
		puts "Your ethnicity is #{@ethnicity}!"
		puts "Here is the #{@reindeer_ranking}!"
		puts "Santa is #{age} year(s) old!"
	end

end

=begin
#Testing if new Santa is created
santa = Santa.new("male", "white")
santa.speak
santa.eat_milk_and_cookies("Chocolate Chip")
santa.about


#Inital test after adding attributes
santa = Santa.new("male", "white")
santa.about

#Provided example to add new identities
santas = []

santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")

p santas

#Another initialization to add instances
santas = []

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

p santas

#Creating random Santas
santas = []

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do
  santa = Santa.new(example_genders.sample, example_ethnicities.sample)
  santa.about
end
=end

#Driver code to test class
santa = Santa.new("male", "white")
santa.speak
santa.eat_milk_and_cookies("Chocolate Chip")
santa.about
santa.celebrate_birthday
santa.get_mad_at("Vixen")
santa.gender = "No one knows"
santa.about
