class PostsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update]

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
  end

  def edit
  end

  def update
    if @post.update(blog_params)
      redirect_to posts_path, notice: "編集しました！"
    else
      render :edit
    end
  end

  private

  def blog_params
    params.require(:post).permit(:content)
  end

  def set_blog
    @post = Post.find(params[:id])
  end
end
