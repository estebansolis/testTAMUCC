# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

apparels = Apparel.create(Apparel_ID: '1', Sex: 'Male', Article: 'Jacket', Size: '32')

students  = Student.create(UIN: '922004958', First_Name: 'Rafael', Last_Name: 'Salas', Email: 'rafsalas@tamu.edu', Phone_Number: '2478247242')

rentals = Rental.create(Rental_ID: '1', UIN: '922004958', Apparel_ID: '1', Checkout_Date: '10-Apr-2016', Expected_Return_Date: '11-Apr-2016', Return_Date: '11-Apr-2016')