class AddApprovedColumnToRequests < ActiveRecord::Migration[7.0]
  def change
    add_column :requests, :approved, :boolean
  end
end
