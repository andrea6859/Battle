require 'spec_helper'

feature 'Enter names' do
    scenario 'submitting player names' do
      visit('/')
      fill_in('name1', with: 'Andrea')
      fill_in('name2', with: 'Murtz')
      click_button ('submit')
      expect(page).to have_content('Andrea vs Murtz')
    end
end
