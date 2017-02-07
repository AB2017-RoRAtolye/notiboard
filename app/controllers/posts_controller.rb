class PostsController < ApplicationController
  def index
  end

  def new
    @board = Board.find(params[:board_id])
    @post = Post.new
  end

  def create
    @board = Board.find(params[:board_id])
    @post = @board.posts.new(post_params)
    @post.user = current_user

    if @post.save
      redirect_to board_path(@board), notice: "Duyuru olusturuldu"
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
  end

  def destroy
  end

  def post_params
    params.require(:post).permit(:title, :content, :image, :remove_image)
  end
end
