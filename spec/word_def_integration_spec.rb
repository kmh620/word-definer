# require('word')
# require('capybara/rspec')
# require('./app')
#
# Capybara.app = Sinatra::Application
# set(:show_exceptions, false)
#
# describe('Adding a word', {:type => :feature}) do
#   it('User adds word to dictionary') do
#     visit('/')
#     fill_in('input_word', :with => 'table')
#     click_button('Add')
#     save_and_open_page
#     expect(page).to have_content("table")
#   end
# end
