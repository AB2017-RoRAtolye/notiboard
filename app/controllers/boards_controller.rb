class BoardsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_board, only: [:show, :edit, :update]
  #before_action :authorize, only: [:edit, :update, :destroy]

  def show
  end

  def index
    @boards = Board.all
  end

  def new
    @board = Board.new
  end

  def edit
    authorize @board

  end

  def update
    authorize @board
    if @board.update(board_params)
      redirect_to board_path(@board), notice: "Başarıyla güncellendi"
    else
      render :edit
    end
  end

  def create
    @board = Board.new(board_params)

    if @board.save
      @board.owners << current_user
      redirect_to board_path(@board), notice: "Başarıyla oluşturuldu"
    else
      render :new
    end
  end

  # def authorize
  #   redirect_to(root_path, notice: "Bu islem icin yetkiniz yok") unless @board.owners.include?(current_user)
  # end

  def board_params
    params.require(:board).permit(:title, :description, :public, :logo, :remove_logo)
  end

  def set_board
    @board = Board.find(params[:id])
  end

end
