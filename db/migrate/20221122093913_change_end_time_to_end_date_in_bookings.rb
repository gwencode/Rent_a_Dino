class ChangeEndTimeToEndDateInBookings < ActiveRecord::Migration[7.0]
  def change
    rename_column :bookings, :end_time, :end_date
  end
end
