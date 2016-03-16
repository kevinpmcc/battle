require 'spec_helper'

feature "display hit points" do
  scenario "users have hit points" do
    sign_in_and_play
    expect(page).to have_content "boob: 60HP"
  end
end
