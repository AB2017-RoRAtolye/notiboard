class AddSlackUrlToBoards < ActiveRecord::Migration[5.0]
  def change
    add_column :boards, :slack_url, :string
  end
end
