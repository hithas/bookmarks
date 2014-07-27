class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def show
    @bookmark = Bookmark.find_by_id(params['id'])
    if @bookmark.id == 1
      @prev = Bookmark.last.id
    else
      @prev = @bookmark.id-1
    end
  
    if @bookmark.id == Bookmark.last.id
      @next = '/bookmarks/1'
    else
      @next = @bookmark.id+1
    end
  end
  
  
end
