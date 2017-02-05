class BoardsController < ApplicationController
  def show
    @board = Board.find(params[:id])
  end

  def index
    @boards = Board.all
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(board_params)

    if @board.save
      redirect_to boards_path
    else
      render :new
    end
  end

  def board_params
    params.require(:board).permit(:title, :description, :public)
  end

end
