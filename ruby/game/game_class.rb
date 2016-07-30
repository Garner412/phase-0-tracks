# Game Logic

class Game


	def initialize(user1_word)
		@secret_word = user1_word.split('')
		correct_guess = []
	end

	def about
		puts "The secret word is #{@secret_word}"
	end

	def guess_logic(user2_guess)
		if @secret_word.include?(user2_guess)
			puts "#{user2_guess} is included in the secret word!"
		else
			puts "#{user2_guess} is not included in the secret word!"
		end
	end

end


# Driver Code 

# game = Game.new("secret")
# game.about
# game.guess_logic('c')

# User Interface
guess_count = 0

puts "Welcome to the guessing game. The game where all great guessers guess their way to guessing greatness!"
puts "User 1, please enter the secret word: "
user1_word = gets.chomp.downcase
game = Game.new(user1_word)
game.about
puts "User 2, the word is #{user1_word.length} letters long."
loop do
	break if guess_count >= user1_word.length
puts "User 2, please guess a letter."
user2_guess = gets.chomp.downcase
game.guess_logic(user2_guess)

guess_count += 1
end

game.about