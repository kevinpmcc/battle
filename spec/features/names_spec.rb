require 'spec_helper'

feature 'Battle' do

  feature '/names' do
    scenario 'when players enter names we see those names on screen' do
      visit('/')
      fill_in(:first_name, with: 'Abe')
      fill_in(:second_name, with: 'Brian')
      click_button('click here to tell us your dinosaur names')
      expect(page).to have_content('Abe')
      expect(page).to have_content('Brian')
    end
  end

end
