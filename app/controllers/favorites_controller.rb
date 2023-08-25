class FavoritesController < ApplicationController

  def create
    current_user.favorites.create(blog_id: params[:blog_id])
    respond_to do |format|
      format.html { redirect_to blogs_path }
      format.js { render :create }
    end
  end

  def destroy
    current_user.favorites.find_by(id: params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to blogs_path }
      format.js { render :destroy }
    end
  end

end
