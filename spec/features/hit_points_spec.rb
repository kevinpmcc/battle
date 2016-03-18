require 'spec_helper'

feature 'Hit Points' do
  scenario 'player2 has 100 hit points at start of game' do
    sign_in_and_play
    expect(page).to have_content("Brian: 100 Hit Points")
  end

  scenario 'player 2 has 60 hit points after attack' do
    sign_in_and_play
    click_button("Attack")
    click_button("Next turn")
    expect(page).to have_content("Brian: 60 Hit Points")
  end

end
