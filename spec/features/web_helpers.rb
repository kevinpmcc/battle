def sign_in_and_play
  visit '/'
  fill_in :player_1_name, with: "Kevin"
  fill_in :player_2_name, with: "Fluffy"
  click_button "Submit"
end
