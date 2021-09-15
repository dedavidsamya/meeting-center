class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :name
      t.string :email
      t.boolean :catering
      t.integer :seats
      t.datetime :beginning
      t.datetime :end

      t.timestamps
    end
  end
end
