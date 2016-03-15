require './app'

feature "Enter names" do
  scenario "User can enter a name" do
    visit '/'
    fill_in "player_1_name", with: "Kevin"
    fill_in "player_2_name", with: "Fluffy"
    click_button "Submit"
    expect(page).to have_text("Kevin vs Fluffy.")
  end
end
