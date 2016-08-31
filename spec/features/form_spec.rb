require 'spec_helper'

  feature 'enter player names' do
    before :each do
      visit('/')
      fill_in :player_1_name, with: 'Dave'
      fill_in :player_2_name, with: 'Mittens'
      click_button 'submit'
    end
    scenario 'submitting names' do
      expect(page).to have_content 'Dave vs. Mittens'
    end
    scenario 'show initial points' do
      expect(page).to have_content '0 - 0'
    end
  end
