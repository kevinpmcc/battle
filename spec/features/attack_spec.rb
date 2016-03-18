require 'spec_helper'

feature '/attack' do
  scenario 'can attack player 2 with attack button' do
    sign_in_and_play
    click_button("Attack")
    expect(page).to have_content('You attacked Brian, the dinosaur')
  end

end
