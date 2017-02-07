require "rails_helper"

RSpec.describe BoardsController, :type => :controller do
  describe "GET #index" do
    it "loads all Boards and assigns to @boards" do
      board_1 = Board.create(title: "Board 1", description: "Desc 1")
      board_2 = Board.create(title: "Board 2", description: "Desc 2")

      get :index
      expect(assigns(:boards).count).to eq(2)
    end
  end


  describe "#subscribe" do
    it "adds current_user to board.subscribers" do
      user = User.create(email: "u@u.com", password: 123456)
      board = Board.create(title: "Board 1", description: "Desc 1")
      sign_in user

      post :subscribe, params: {id: board.id}

      expect(board.subscribers).to include(user)

    end
  end
end
