class FavoritesController < ApplicationController

  def create
    @blog = Blog.find(params[:blog_id])
    @favorite = current_user.favorites.create(blog: @blog)

    render "blogs/create"
  end

  def destroy
    @favorite = current_user.favorites.find(params[:id])
    @blog = @favorite.blog
    @favorite.destroy

    render "blogs/destroy"
  end
      

end
