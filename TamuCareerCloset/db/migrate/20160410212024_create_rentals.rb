class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.string :Rental_ID
      t.string :UIN
      t.string :Apparel_ID
      t.datetime :Checkout_Date
      t.datetime :Expected_Return_Date
      t.datetime :Return_Date

      t.timestamps null: false
    end
  end
end
