json.array!(@rentals) do |rental|
  json.extract! rental, :id, :Rental_ID, :UIN, :Apparel_ID, :Checkout_Date, :Expected_Return_Date, :Return_Date
  json.url rental_url(rental, format: :json)
end
