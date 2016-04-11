class RemoveCreatedAtFromRental < ActiveRecord::Migration
  def change
    remove_column :rentals, :created_at, :datetime
  end
end
