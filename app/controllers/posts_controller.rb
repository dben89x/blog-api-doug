class PostsController < ApplicationController
  def index
    if params[:search]
      @posts = Post.where('title like ? OR body like ?')

    end
    render json: Post.all
  end

  def show
    render json: Post.find(params[:id])
  end
end
