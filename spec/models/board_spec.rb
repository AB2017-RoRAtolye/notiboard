require "rails_helper"

RSpec.describe Board, :type => :model do
  it "validates title presence" do
    board = Board.new
    expect(board.save).to eq(false)
  end

  it "has many posts" do
    user = User.create(email: "u@u.com", password: 123456)
    board = Board.create(title: "Board 1", description: "Desc 1")

    p1 = Post.create(title: "Post 1", board: board, user: user)
    p2 = Post.create(title: "Post 2", board: board, user: user)

    expect(board.posts.count).to eq(2)
  end

end
