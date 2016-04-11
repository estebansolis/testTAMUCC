class RemoveUpdatedAtFromApparel < ActiveRecord::Migration
  def change
    remove_column :apparels, :updated_at, :datetime
  end
end
