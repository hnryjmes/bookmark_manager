feature 'Adding bookmarks' do
  scenario 'adding a bookmark' do
    visit('/')
    click_button('New Bookmark')
    fill_in('url', with: 'http://www.tumblr.com')
    fill_in('title', with: 'Tumblr')
    click_button('Submit')
    expect(page).to have_content('Tumblr')
  end
end
