require './app'

feature "View Hit Points" do
  scenario "See Player 2 hit points" do
    sign_in_and_play
    expect(page).to have_content("Fluffy: 1HP")
  end
end
