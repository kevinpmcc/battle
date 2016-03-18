require 'spec_helper'

feature 'Battle'

  feature '/names' do
    scenario 'when players enter names we see those names on screen' do
      fill_in('first_name', with: 'Abe')
      fill_in('second_name', with: 'Brian')
      expect(page).to have_content('Abe')
      expect(page).to have_content('Brian')
    end
  
  end



