class PostsController < ApplicationController
  def index
  end

  def new
    @post = Post.new
  end

  def create
    # Create post connected to Board and current user
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
