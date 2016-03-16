require 'player'

describe Player do
  subject(:player) { described_class.new(name) }
  let(:name) { double :String }

  describe '#name' do
    it 'will return the name' do
      expect(player.name).to eq name
    end
  end

end 
