class Booking < ApplicationRecord
  validates :name, :email, :beginning, :end, :seats, :catering, presence: { message: "This field can't be empty"}
end

# Here I make sure that the user provides input in all fields.
