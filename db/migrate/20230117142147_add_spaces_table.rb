class AddSpacesTable < ActiveRecord::Migration[7.0]
  def change
    create_table :spaces do |t|
      t.text :description
      t.text :name
      t.decimal :price
      t.text :address
      t.bigint :user_id
    end
  end
end
