require 'player'

describe Player do
  subject(:player) { described_class.new(name) }
  let(:name) { double :String }
  hp = Player::DEFAULT_HP

  describe '#name' do
    it 'will return the name' do
      expect(player.name).to eq name
    end
  end

  describe '#hp' do
    it 'will return the hp' do
      expect(player.hp).to eq hp
    end
  end

  describe '#receive_attack' do
    it 'will reduce the hp' do
      expect{ player.receive_attack }.to change{ player.hp }.by(-6)
    end
  end
end
