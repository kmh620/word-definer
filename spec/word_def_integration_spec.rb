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

describe('Adding a definition', {:type => :feature}) do
  it('User adds definition(s) to word') do
    visit('/')
    fill_in('definition', :with => 'this is a definition')
    click_button('Add Definition')
    expect(page).to have_content("this is a definition")
  end
end
