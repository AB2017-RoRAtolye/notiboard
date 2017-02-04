class BoardsController < ApplicationController
  def show
  end

  def index
    @boards = Board.all
  end
end
