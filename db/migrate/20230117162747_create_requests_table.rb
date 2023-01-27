class CreateRequestsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :requests do |t|
      t.bigint :space_id
      t.bigint :user_id
      t.date :book_in
      t.date :book_out
    end
  end
end
