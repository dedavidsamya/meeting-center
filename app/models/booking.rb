class Booking < ApplicationRecord
  validates :name, :email, :beginning, :end, :seats, :catering, presence: { message: "This field can't be empty"}
end

# This is my Booking model, which is directly connected to the structure of the Bookings table in my database
## my Bookings table contains the columns name, email, beginning, end, seats, and catering, each one corresponding
### to a field of the form which the user has access to, in order to book a meeting room.
####  By adding the validation to all the columns I make sure that the user provides input in all fields of the form.
