class CommentsController < ApplicationController
  before_action :set_post, only: %i[new create]


  def new
    # We need @restaurant in our `simple_form_for`
    @comment = Comment.new
  end


  def create
    @comment = Comment.new(comment_params)
    @comment.post = @post
    if @comment.save
      redirect_to post_path(@post)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end

end
