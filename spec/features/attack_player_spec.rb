require 'spec_helper'

feature 'Attack' do
  scenario 'Player 1 attack player 2' do
  sign_in_and_play
  click_button('attack')
  expect(page).to have_content('Andrea attacked Murtz')
  end
end
