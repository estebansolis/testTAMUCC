class RemoveCreatedAtFromApparel < ActiveRecord::Migration
  def change
    remove_column :apparels, :created_at, :datetime
  end
end
