require_relative 'game_class'

describe Game do
  let(:game) { Game.new("secret") }

	it "returns the number of guesses remaining" do
		expect(game.guesses_remaining).to eq 6
	end

  	it "returns the _ spaces for the word" do
   	expect(game.current_status).to eq "_ _ _ _ _ _"
  	end

	it "checks for incorrect letter" do
		expect(game.winner("a", "a")).to eql @win = true
	end
end