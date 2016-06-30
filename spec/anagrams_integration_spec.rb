require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the anagrams result path', {:type => :feature}) do
  it('processes the user target word and test words and returns true or false for each test word') do
    visit('/')
    fill_in('target_word', :with => "cat")
    fill_in('test_word_1', :with => "cute")
    fill_in('test_word_2', :with => "act")
    fill_in('test_word_3', :with => "cut")
    click_button("Test")
    expect(page).to have_content("false")
  end
end
