class PostsController < ApplicationController
  def index
    @post = Post.new
    @posts = Post.all
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      redirect_to posts_path
    else
      @posts = Post.all
      render :index
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :photo)
  end
end
