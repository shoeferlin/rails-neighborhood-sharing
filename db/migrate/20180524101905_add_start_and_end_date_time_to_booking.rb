class AddStartAndEndDateTimeToBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :start_time, :date
    add_column :bookings, :end_time, :date
  end
end
