require 'player'

describe Player do
  subject(:player_1) { described_class.new(name) }
  let(:name) { double :String }
  hp = Player::DEFAULT_HP

  describe '#name' do
    it 'will return the name' do
      expect(player_1.name).to eq name
    end
  end

  describe '#hp' do
    it 'will return the hp' do
      expect(player_1.hp).to eq hp
    end
  end

  describe '#receive_attack' do
    it 'will reduce the hp' do
      expect{ player_1.receive_attack }.to change{ player_1.hp }.by(-6)
    end
    
    it 'will not allow hp to go below 0' do
      1000.times { player_1.receive_attack }
      expect(player_1.hp).to eq 0
    end
  end

  describe '#loser?' do
    it 'will be true when HP reaches 0' do
    10.times{ player_1.receive_attack }
    expect(player_1).to be_loser
    end
  end

  
end
