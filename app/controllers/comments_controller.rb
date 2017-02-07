class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.create(comment_params)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
  end

  def comment_params
    params.require(:comment).permit(:content, :post_id)
  end

end
