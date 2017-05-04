require_relative 'game_file'

describe WordGame do
	let(:game) {WordGame.new}

	it "checks the guess against the word"
		expect(game.check_guess("c")).to eq true
	end



end