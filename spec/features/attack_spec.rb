require './app'

feature "Attack opponent" do
  scenario "See Player 2 to get attacked and receive confirmation" do
    sign_in_and_play
    click_link "Attack!!!!"
    expect(page).to have_content("Fluffy yelping in pain! Why you so evil???")
  end
end
