class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :UIN
      t.string :First_Name
      t.string :Last_Name
      t.string :Email
      t.string :Phone_Number

      t.timestamps null: false
    end
  end
end
