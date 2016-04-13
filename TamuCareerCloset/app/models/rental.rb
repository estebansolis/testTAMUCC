class Rental < ActiveRecord::Base
    validates :Rental_ID, presence: true
    validates :UIN, presence: true
    validates :Apparel_ID, presence: true
end
