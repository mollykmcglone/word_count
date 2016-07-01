require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word count path', {:type => :feature}) do
  it('accepts a single word and a string of words from the user and returns how many times the single word appears in the string') do
    visit('/')
    fill_in('check_word', :with => 'hat')
    fill_in('string_to_check', :with => 'The cat in the hat! What a hat has the cat! Hat that cat!')
    click_button('Go')
    expect(page).to have_content(3)
  end
end
