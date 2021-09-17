class AddSunsetAndSunriseToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :sunset, :boolean
    add_column :bookings, :sunrise, :boolean
  end
end
