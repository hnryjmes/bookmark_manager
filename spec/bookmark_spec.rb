require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'shows all bookmarks' do
      Bookmark.create('http://www.makersacademy.com', 'Makers Academy')
      Bookmark.create('http://www.destroyallsoftware.com', 'Destroy All Software')
      Bookmark.create('http://www.google.com', 'Google')


      bookmarks = Bookmark.all.map { |bookmark| bookmark['title'] }

      expect(bookmarks).to include('Makers Academy')
      expect(bookmarks).to include('Destroy All Software')
      expect(bookmarks).to include('Google')
    end
  end

  describe '.create' do
  it 'creates a new bookmark' do
    Bookmark.create('http://www.testbookmark.com', 'Test Bookmark')

    bookmarks = Bookmark.all.map { |bookmark| bookmark['title'] }

    expect(bookmarks).to include 'Test Bookmark'
  end
end
end
