class PostsController < ApplicationController
  def index
    @posts=Post.all
  end
  def new
    @post=Post.new
  end
  def create
    Post.create(blog_params)
    redirect_to new_post_path
  end
  private

  def blog_params
    params.require(:post).permit(:content)
  end
end
