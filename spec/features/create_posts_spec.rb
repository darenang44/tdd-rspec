
# so we can import the setting
require 'rails_helper.rb'

# visit root route
# click create post link
# fill in form with needed information, in our case needed information is title and caption of job
# click a submit button
# expect page to have he content we submitted

feature 'Creating Posts' do
  scenario 'can create job' do
    # visit root route
    visit '/'
    # click create post link
    click_link 'Create Post'
    # fill in form with needed information, in our case needed information is title and caption of job
    fill_in 'Title', with: 'title'
    fill_in 'Caption', with: 'caption'
    # click a submit button
    click_button 'Create Post'
    # expect page to have he content we submitted
    expect(page).to have_content('title')
    expect(page).to have_content('caption')
  end
end
