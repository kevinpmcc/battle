require 'game'

describe Game do
  subject(:player) { double(:Player) }
  subject(:game) { described_class.new }

  describe '#attack' do
    it 'execute an attack' do
      expect(player).to receive(:receive_attack)
      game.attack(player)
    end
  end
end
