
def sign_in_and_play
    visit('/')
    fill_in(:first_name, with: 'Abe')
    fill_in(:second_name, with: 'Brian')
    click_button('click here to tell us your dinosaur names')
end
