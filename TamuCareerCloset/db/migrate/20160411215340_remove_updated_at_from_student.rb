class RemoveUpdatedAtFromStudent < ActiveRecord::Migration
  def change
    remove_column :students, :updated_at, :datetime
  end
end
