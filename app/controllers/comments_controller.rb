class CommentsController < ApplicationController


  def create
    @post = Post.find_by(slug: params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end 

  private

  def comment_params
    params.permit(:full_name, :message)
  end

end
