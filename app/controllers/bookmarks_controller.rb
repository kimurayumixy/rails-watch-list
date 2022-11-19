class BookmarksController < ApplicationController

  def new
    @list = List.find(params[:list_id])
    @user = current_user
    @bookmark = Bookmark.new
    authorize @bookmark
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @list = List.find(params[:list_id])
    @user = current_user
    @bookmark.list = @list
    @bookmark.user = @user
    authorize @bookmark
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new, status: unprocessable_entity
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    authorize @bookmark
    @bookmark.destroy
    redirect_to list_path(@bookmark.list), status: :see_other
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end

end
