require 'spec_helper'

feature 'attack' do
  scenario 'attacks player 2' do
    sign_in_and_play
    click_button 'Attack boob'
    expect(page).to have_content 'boob was attacked'
  end
end
