require 'game'

describe Game do
  
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }


describe '#attack_player' do
  it 'will call on player reduce_hp' do
    allow(player_1).to receive(:reduce_hp)
    expect(player_1).to receive(:reduce_hp)
    game.attack_player(player_1)
  end

  describe '#initialize' do
    it 'will initialize with player1' do
      expect(game.player_1).to eq player_1
    end
  end
end
end
