class CreateBoards < ActiveRecord::Migration[5.0]
  def change
    create_table :boards do |t|
      t.string :title
      t.string :slug, index: true
      t.text :description
      t.boolean :public
      t.boolean :archived, default: false

      t.timestamps
    end
  end
end
