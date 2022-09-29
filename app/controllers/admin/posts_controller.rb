class Admin::PostsController < Admin::ApplicationController
  before_action :get_post, only: [:show, :edit, :update]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(user_params)
    if @post.save
      redirect_to admin_post_path(@post)
    end
  end

  def show;end

  def edit;end

  def update
    if @post.update(post_params)
      redirect_to admin_post_path(@post)
    end
    
  end

  def get_post
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:title, :content,:user_id)
  end

end
