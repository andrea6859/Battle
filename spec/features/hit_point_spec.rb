require 'spec_helper'

feature 'hit points' do
  scenario 'see player 2 hit points' do
    visit('/')
    fill_in('name1', with: 'Andrea')
    fill_in('name2', with: 'Murtz')
    click_button ('submit')
    expect(page). to have_content("Murtz: 50 Points")
  end
end
