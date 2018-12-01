require('word')
require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('Adding a word', {:type => :feature}) do
  it('User adds word to dictionary') do
    visit('/')
    fill_in('input-word', :with => 'table')
    click_button('Add')
    expect(page).to have_content("Table")
  end
end
