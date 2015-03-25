class PostController < ApplicationController
  def index
    @posts = Post.all
  end

  def genesis
  end
end