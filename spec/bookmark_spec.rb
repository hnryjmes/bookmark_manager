require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'shows all bookmarks' do
      Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
      Bookmark.create(url: 'http://www.destroyallsoftware.com', title: 'Destroy All Software')
      Bookmark.create(url: 'http://www.google.com', title: 'Google')


      bookmarks = Bookmark.all.map { |bookmark| bookmark['title'] }

      expect(bookmarks).to include('Makers Academy')
      expect(bookmarks).to include('Destroy All Software')
      expect(bookmarks).to include('Google')
    end
  end

  describe '.create' do
  it 'creates a new bookmark' do
    Bookmark.create(url: 'http://www.testbookmark.com', title: 'Test Bookmark')

    bookmarks = Bookmark.all.map { |bookmark| bookmark['title'] }

    expect(bookmarks).to include 'Test Bookmark'
  end
end
end
