require 'spec_helper'
require 'player'

describe Player do

  subject(:player) { described_class.new("Brian") }

  describe '#initialize' do
    it 'is initialized with a name ' do
      expect(player.name).to eq "Brian"
    end

    it 'is initialised with HP' do
      expect(player.hp).to eq 100
    end
  end

  describe '#reduce_hp' do

    it 'reduces the players hp' do
      player.reduce_hp
      expect(player.hp).to eq 60
    end
  end

end
