require 'spec_helper'

  feature 'enter player names' do
    before :each do
      sign_in_and_play
    end
    scenario 'submitting names' do
      expect(page).to have_content 'Dave'
      expect(page).to have_content 'Mittens'
    end
    scenario 'show initial points' do
      expect(page).to have_content '60HP'
    end
  end
