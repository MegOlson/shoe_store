require "capybara/rspec"
require "./app"
require "pry"
require 'spec_helper'

Capybara.app = Sinatra::Application
set(:show_exceptions, false)
#
# describe 'the store creation path', {:type => :feature} do
#   it 'takes the user to the homepage where they can create a store' do
#     visit '/'
#     fill_in('Store Name', :with => 'Nordstroms')
#     click_button('Add')
#     expect(page).to have_content('Nordstroms')
#   end
# end
#
# describe 'the store update path', {:type => :feature} do
#   it 'allows a user to change the name of the store' do
#     test_store = Store.new({:name => 'Nordstroms', :id => nil})
#     test_store.save
#     click_link('Nordstroms')
#     fill_in('name', :with => 'Nordys')
#     click_button('Update Store')
#     expect(page).to have_content('Nordys')
#   end
# end
#
# describe 'the store delete path', {:type => :feature} do
#   it 'allows a user to delete a store' do
#     test_store = Store.new({:name => 'Nordstroms', :id => nil})
#     test_store.save
#     id = test_store.id
#     click_link('Nordstroms')
#     click_button('Delete Store')
#     visit '/'
#     expect(page).not_to have_content("Nordstroms")
#   end
# end
