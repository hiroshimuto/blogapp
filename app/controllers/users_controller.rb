class UsersController < ApplicationController
  def show
    @name = current_user.name
    @posts = current_user.posts.page(params[:page]).per(3).order("created_at DESC")
  end
end
