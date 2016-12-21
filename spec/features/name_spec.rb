require 'rails_helper.rb'

feature 'Visiting Homepage' do
  scenario 'index page shows welcome text' do
    visit '/'
    expect(page).to have_text("Welcome to Posts")
  end
end
