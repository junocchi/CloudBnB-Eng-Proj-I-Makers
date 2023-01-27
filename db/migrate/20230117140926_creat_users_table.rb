class CreatUsersTable < ActiveRecord::Migration[7.0]
  def change
    # makes a table called "posts"
      # has a column called "text", type is text
      # column "author_name", a string
      # automatically makes created_at and modified_at columns
      create_table :users do |t|
        t.string :firstname
        t.string :lastname
        t.string :email
        t.string :password_digest
        t.string :username
      end
  end
end
