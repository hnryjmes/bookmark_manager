require 'sinatra/base'
require_relative './lib/bookmark'

class BookmarkManager < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/bookmarks/new' do
    erb :new
  end

  post '/bookmarks/new' do
    Bookmark.create(params[:url], params[:title])
    redirect '/bookmarks'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  run! if app_file == $0
end
