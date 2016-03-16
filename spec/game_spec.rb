require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }

  describe '#initialize' do
    it 'it initializes with two instances of the player class' do
      expect(game.player_1).to eq player_1
      expect(game.player_2).to eq player_2
    end
  
    it "will begin with player_1's turn" do
      expect(game).to be_player_1_turn 
    end
  end
  

  describe '#attack' do
    it 'execute an attack' do
      expect(player_2).to receive(:receive_attack)
      game.attack
    end
    
    it 'execute an attacks on alternate players' do
      allow(player_2).to receive(:receive_attack)
      game.change_turn
      expect(player_1).to receive(:receive_attack)
      game.attack
    end
  end
end
