require_relative 'game'

describe Game do 
	let(:game) { Game.new }

	it "takes user2's guess out of user1's word" do 
		expect(game.try("a", "attack")).to eq false
	end
end