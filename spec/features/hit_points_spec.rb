require 'spec_helper'

feature "display hit points" do
  scenario "users have hit points" do
    visit "/"
     
    fill_in "player_1_name", :with => "ass"
    fill_in "player_2_name", :with => "boob"
    click_button "Submit"

    expect(page).to have_content "boob: 60HP"
  end
end
