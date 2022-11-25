class PostsController < ApplicationController
  def index
    @post=Post.all
  end
  def new
    @post=Post.new
  end
  def create
    Post.create(pblog_params)
    redirect_to new_post_path
  end
  private

  def blog_params
    params.require(:post).permit(:content)
  end
end
