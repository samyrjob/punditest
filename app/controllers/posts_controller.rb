class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]


  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_path(@post)
    else
      render :new, status: :unprocessable_entity
    end
  end


  private

  def post_params
    params.require(:post).permit(:content, :title)
  end

  def set_post
    @post = Post.find(params[:id])
  end

end
