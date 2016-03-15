require 'player'

describe Player do

  it "should return the player's name" do
    player = described_class.new("Fluffy")
    expect(player.name).to eq "Fluffy"
  end

end
