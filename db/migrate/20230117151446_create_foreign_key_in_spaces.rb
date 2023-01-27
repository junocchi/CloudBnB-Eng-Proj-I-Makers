class CreateForeignKeyInSpaces < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :spaces, :users
  end
end
