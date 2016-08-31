require 'spec_helper'

feature 'attack player' do
  scenario 'click attack button' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content 'GREAT ATTACK !!!'
  end
end
