def sign_in_and_play
  visit('/')
  fill_in('name1', with: 'Andrea')
  fill_in('name2', with: 'Murtz')
  click_button ('submit')
end
