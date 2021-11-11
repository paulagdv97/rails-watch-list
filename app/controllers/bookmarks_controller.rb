class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  # POST /restaurants
  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      redirect_to @list
    else
      render :new
    end
  end

  private
  # Only allow a list of trusted parameters through.
  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end
end
