require './app'

feature "View Hit Points" do
  scenario "See Player 2 hit points" do
    visit '/'
    fill_in :player_1_name, with: "Kevin"
    fill_in :player_2_name, with: "Fluffy"
    click_button "Submit"
    expect(page).to have_content("Fluffy: 1HP")
  end
end
