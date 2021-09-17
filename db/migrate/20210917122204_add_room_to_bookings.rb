class AddRoomToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :room, :string
  end
end
