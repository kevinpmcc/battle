require './app'

feature "reduce hit points" do
  scenario "when attacked" do
    sign_in_and_play
    click_link "Attack!!!!"
    expect(page).to have_text("Fluffy: 9HP")
  end
end
