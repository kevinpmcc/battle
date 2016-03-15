require 'game'

describe Game do
  let(:player_class) { double :player_class, new: player }
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }
  describe "#attack" do
    it "should let player receive attack" do
      expect(player2).to receive(:receive_attack)
      game.attack(player2)
    end
  end

  describe "#player_1" do
    it 'should return player_1' do
      game.player_1
    end
  
  end

  describe "#player_2" do
    it 'should return player_2' do
      game.player_2
    end
  
  end

end
