require 'pg'

class Bookmark
  def self.all
    # begin
    con = PG.connect dbname: 'bookmark_manager', user: 'Henry'

    rs = con.exec "SELECT * FROM bookmarks;"

    @bookmarks = []

    rs.each do |row|
      @bookmarks << row['url']
    end
    #
    # rescue PG::Error => e
    #   puts e.message
    # ensure
    #   rs.clear if rs
    #   con.close if con
    # end
    @bookmarks
  end
end
