class RemoveUpdatedAtFromRental < ActiveRecord::Migration
  def change
    remove_column :rentals, :updated_at, :datetime
  end
end
