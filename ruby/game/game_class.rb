# Game Logic

class Game
	attr_reader :secret_word, :correct_guess, :win
	attr_accessor :guesses_remaining

	def initialize(user1_word)
		@secret_word = user1_word.split('')
		@guesses_remaining = 0
		@wrong_guesses = []
		@update_spots = []
		@correct_guess = []
		@win = false
		dashes(user1_word)
		@secret_word.join(' ')
	end

	def dashes(user1_word)
		user1_word.length.times.each do
			@correct_guess << "_"
			@correct_guess
		end
	end

	def about
		puts "The secret word is #{@secret_word.join}"
	end

	def current_status
		puts @correct_guess.join(' ')
	end

	def guess_logic(user2_guess)
		if @wrong_guesses.include?(user2_guess)
			puts "You've already guessed that letter!"
			puts "Here is the list of guesses #{@wrong_guesses}"
			current_status
		elsif @secret_word.include?(user2_guess)
			puts "#{user2_guess} is included in the secret word!"
			right_guess(user2_guess)
			puts @correct_guess.join(' ')
		else
			puts "#{user2_guess} is not included in the secret word!"
			wrong_guess(user2_guess)
			current_status
			@guesses_remaining -= 1
		end
	end

	def right_guess(user2_guess)
		@update_spots = @secret_word.each_index.select {|i| @secret_word[i] == (user2_guess)}
		@update_spots.each do |index|
			@correct_guess[index] = user2_guess
		end
		@correct_guess.join(' ')
	end

	def wrong_guess(user2_guess)
		@wrong_guesses << user2_guess
		puts "Your current wrong guesses thus far #{@wrong_guesses}"
		@wrong_guesses
	end


	def winner(secret_word, correct_guess)
		if @secret_word.join(' ') == @correct_guess.join(' ')
			puts "You're the winner!!!"
			@win = true
		end
	end
end


# User Interface

correct_guess = []

puts "Welcome to the guessing game. The game where all great guessers guess their way to guessing greatness!"
puts "User 1, please enter the secret word: "
user1_word = gets.chomp.downcase

game = Game.new(user1_word)
game.guesses_remaining = user1_word.length

puts "User 2, the word is #{user1_word.length} letters long."
puts "You have #{game.guesses_remaining} guesses remaining!"
game.current_status

loop do
	break if game.guesses_remaining == 0
puts correct_guess.join(' ')
puts "User 2, please guess a letter. #{game.guesses_remaining} guesses remaining!"
user2_guess = gets.chomp.downcase

game.guess_logic(user2_guess)
game.winner(@secret_word, @correct_guess)
	break if game.secret_word == game.correct_guess

end
if game.win == false
	puts "You're a loser!!!"
end

game.about
