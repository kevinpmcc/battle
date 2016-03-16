require 'player'

describe Player do
  subject(:player_1) { described_class.new(name) }
  subject(:player_2) { double(:Player) }
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
  end
end
