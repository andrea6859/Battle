require 'spec_helper'

feature 'Enter names' do
    scenario 'submitting player names' do
      visit('/')
      fill_in('Name1', with: 'Andrea')
      fill_in('Name2', with: 'Murtz')
      click_button 'Submit'
      expect(page).to have_content('Andrea vs Murtz')
    end
end
