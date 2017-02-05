class AddLogoToBoards < ActiveRecord::Migration[5.0]
  def change
    add_column :boards, :logo, :string
  end
end
