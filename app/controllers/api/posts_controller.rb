class Api::PostsController < ApplicationController
  def create
    @post = Post.new(post_params)

    if @post.save
      render json: @post, status: :ok
    else
      render json: @post.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
  end

  def index
    @posts = Post.all
    render json: @posts
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
