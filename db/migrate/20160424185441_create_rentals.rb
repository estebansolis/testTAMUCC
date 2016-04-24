class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.string :Rental_ID
      t.string :UIN
      t.string :Apparel_ID
      t.string :Checkout_Date
      t.string :Expected_Return_Date
      t.string :Return_Date

      t.timestamps null: false
    end
  end
end
