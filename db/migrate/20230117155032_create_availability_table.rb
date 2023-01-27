class CreateAvailabilityTable < ActiveRecord::Migration[7.0]
  def change
      create_table :availabilities do |t|
        t.bigint :space_id
        t.date :book_in
        t.date :book_out
    end
  end
end
