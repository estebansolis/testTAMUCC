class AddStatusToApparel < ActiveRecord::Migration
  def change
    add_column :apparels, :Status, :string
  end
end
