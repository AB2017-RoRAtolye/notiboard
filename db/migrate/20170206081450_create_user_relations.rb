class CreateUserRelations < ActiveRecord::Migration[5.0]
  def change
    create_table :user_relations do |t|
      t.references :board, foreign_key: true
      t.references :user, foreign_key: true
      t.string :role

      t.timestamps
    end
  end
end
