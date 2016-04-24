class CreateApparels < ActiveRecord::Migration
  def change
    create_table :apparels do |t|
      t.string :Apparel_ID
      t.string :Sex
      t.string :Article
      t.string :Size
      t.string :Status

      t.timestamps null: false
    end
  end
end
