class PostsController < ApplicationController

  def index
    if params[:tag_id].present?
      @tag = Tag.find(params[:tag_id])
      @posts = @tag.posts.order(created_at: :desc)
    else
      @posts = Post.order(created_at: :desc)
    end

    if params[:search]
      @posts = @posts.where('title Like ?',"%#{params[:search]}%").order(created_at: :desc)
    end

    @posts = @posts.paginate(page: params[:page], per_page: 3)
    @popular_posts = Post.order(page_view: :desc)
  end
  
  def show
    @post = Post.friendly.find(params[:id])
    @post.increment!(:page_view)    
    @tags = @post.tags
    @comments = @post.comments.where(status: true)
  end
  
end
