require 'spec_helper'


  feature '/names' do
    scenario 'when players enter names we see those names on screen' do
      sign_in_and_play
      expect(page).to have_content('Abe')
      expect(page).to have_content('Brian')
    end
  end

