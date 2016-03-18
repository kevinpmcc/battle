require 'spec_helper'

feature 'Hit Points' do
  scenario 'player2 has 100 hit points at start of game' do
    sign_in_and_play
    expect(page).to have_content("Brian: 100 Hit Points")
  end
end
