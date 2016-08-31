require 'spec_helper'

feature 'Enter names' do
    scenario 'submitting player names' do
      sign_in_and_play
      expect(page).to have_content('Andrea vs Murtz')
    end
end
