
require "rails_helper"
require "spec_helper"
require 'capybara/rails'



feature 'Creating posts' do
  scenario 'can create a post' do
    visit '/'
    click_link 'New Post'
    attach_file('Image', "spec/files/images/emma_deck.jpg")
    fill_in 'Content', with: 'nom nom nom #coffeetime'
    click_button 'Create Post'
    expect(page).to have_content('#coffeetime')
    expect(page).to have_css("img[src*='emma_deck.jpg']")
  end
end