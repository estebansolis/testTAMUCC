class RemoveCreatedAtFromStudent < ActiveRecord::Migration
  def change
    remove_column :students, :created_at, :datetime
  end
end
