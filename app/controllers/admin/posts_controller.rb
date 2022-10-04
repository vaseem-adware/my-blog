class Admin::PostsController < Admin::ApplicationController
  before_action :get_post, only: [:show, :edit, :update]

  def index
    @posts = Post.all
    @posts =Post.paginate(page: params[:page], per_page: 5)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to admin_post_path(@post)
    else
      render "new"
    end
  end

  def show
    @tags = @post.tags
  end

  def edit;end

  def update
    if @post.update(post_params)
      redirect_to admin_post_path(@post)
    else
      render "edit"
    end
    
  end

  def get_post
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:title, :content,:user_id, tag_ids:[])
  end

end
