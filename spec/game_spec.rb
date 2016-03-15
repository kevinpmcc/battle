require 'game'

describe Game do
  let(:player_class) { double :player_class, new: player }
  subject(:game) { described_class.new(player_class) }
  let(:player) { double :player }

  describe "#attack" do
    it "should let player receive attack" do
      player_2 = game.add_player_2("Fluffy")
      expect(player).to receive(:receive_attack)
      game.attack
    end
  end
end
