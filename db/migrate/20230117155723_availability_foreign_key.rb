class AvailabilityForeignKey < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :availabilities, :spaces
  end
end
