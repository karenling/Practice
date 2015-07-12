class PostsController < ApplicationController
  def create
    @post = Post.new(post_params)

    if @post.save
      flash[:notice] = ['Post created!']
      redirect_to posts_url
    else
      flash[:errors] = @post.errors.full_messages
      render :new
    end
  end

  def show
  end

  def new
    @post = Post.new
    render :new
  end

  def index
    @posts = Post.all
    render :index
  end

  def destroy
  end

  def update
  end

  private

    def post_params
      params.require(:post).permit(:title, :body, :tag_ids)
    end
end
