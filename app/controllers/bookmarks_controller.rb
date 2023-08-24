class BookmarksController < ApplicationController
  def show
    @bookmark = Bookmark.find(params[:id])
    @lists = @bookmark.lists.includes(:movies)
  end
end
