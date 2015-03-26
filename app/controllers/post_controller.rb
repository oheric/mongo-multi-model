class PostController < ApplicationController
  def index
    @posts = Post.all
  end

  def genesis
    @post = Post.new
  end

  def genesis_post
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_path
    else
      redirect_to @post, notice: "There was an error creating posts."
    end
  end

  def one
    @post = Post.find(params[:post])
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end