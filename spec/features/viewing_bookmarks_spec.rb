feature 'Viewing bookmarks' do
  feature 'visiting the homepage' do
    scenario 'the page title is visible' do
      visit '/'

      expect(page).to have_content 'Bookmark Manager'
    end
  end

  feature 'viewing bookmarks' do
    scenario 'bookmarks are visible' do
      Bookmark.create('http://www.makersacademy.com', 'Makers Academy')
      Bookmark.create('http://www.destroyallsoftware.com', 'Destroy All Software')
      Bookmark.create('http://www.google.com', 'Google')


      visit '/bookmarks'

      expect(page).to have_content 'Makers Academy'
      expect(page).to have_content 'Destroy All Software'
      expect(page).to have_content 'Google'
    end
  end
end
