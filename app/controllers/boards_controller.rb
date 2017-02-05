class BoardsController < ApplicationController
  before_action :set_board, only: [:show, :edit, :update]

  def show
  end

  def index
    @boards = Board.all
  end

  def new
    @board = Board.new
  end

  def edit
  end

  def update

    if @board.update(board_params)
      redirect_to board_path(@board), notice: "Başarıyla güncellendi"
    else
      render :edit
    end
  end

  def create
    @board = Board.new(board_params)

    if @board.save
      redirect_to board_path(@board), notice: "Başarıyla oluşturuldu"
    else
      render :new
    end
  end

  def board_params
    params.require(:board).permit(:title, :description, :public, :logo)
  end

  def set_board
    @board = Board.find(params[:id])
  end

end
