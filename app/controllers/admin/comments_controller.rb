class Admin::CommentsController < Admin::ApplicationController
	before_action :get_comment, only: [:comment_status, :destroy]

	def index
		@comments =Comment.order(created_at: :desc)
	end

	def comment_status
		if @comment.status
			@comment.update(status: false)
		else
			@comment.update(status: true)
		end
		flash[:notice] = "The comment has been #{@comment.status ? "approved" : "dissaproved"}"
		redirect_to admin_comments_path
	end

  def get_comment
  	@comment = Comment.find(params[:id])
  end

  def show
  	@comment = Comment.find(params[:id])

  end

  def destroy
  	@comment.destroy
  	redirect_back(fallback_location: admin_comments_path)
  end
end
