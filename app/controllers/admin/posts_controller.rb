class Admin::PostsController < Admin::ApplicationController
  before_action :get_post, only: [:edit, :update]

  def index
    @posts = Post.order(created_at: :desc).paginate(page: params[:page], per_page: 5)
    
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "You have successfully created a post!"
      redirect_to admin_post_path(@post)
    else
      render "new"
    end
  end

  def show
    @post = Post.friendly.find(params[:id])
    @tags = @post.tags
  end

  def edit;end

  def update
    if @post.update(post_params)
      flash[:notice] = "You have successfully updated the post!"
      redirect_to admin_post_path(@post)
    else
      render "edit"
    end
    
  end

  def get_post
   @post = Post.friendly.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :intro, :user_id, :image, tag_ids:[])
  end

end
