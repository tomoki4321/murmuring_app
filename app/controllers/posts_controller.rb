class PostsController < ApplicationController

  def index
    @posts=Post.all
  end

  def new
    @post=Post.new
  end

  def create
    @post=Post.new(blog_params)
    if @post.save
      redirect_to posts_path notice: "投稿作成しました！"
    else
      render :new
    end  

  end

  def show
    @post=Post.find(params[:id])
  end

  private

  def blog_params
    params.require(:post).permit(:content)
  end
end
