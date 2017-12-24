class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmarks_params)
    @bookmark.save
    
    redirect_to bookmarks_path
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def edit
    @bookmark = Bookmark.find(params[:id])
  end

  def update
    @bookmark = Bookmark.find(params[:id])
    @bookmark.update(bookmarks_params)

    redirect_to bookmarks_path
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy

    redirect_to bookmarks_path
  end

  private
    def bookmarks_params
      params.require(:bookmark).permit(:title, :body, :img_url)
    end

end
