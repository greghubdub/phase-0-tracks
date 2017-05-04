require_relative 'game_file'

describe WordGame do
	let(:game) {WordGame.new("house")}

	it "checks the guess against the word" do
		expect(game.check_guess("o")).to eq "_o___"
	end


end