class AddNumberTimeSlotsToBookingRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :booking_requests, :number_time_slots, :integer
  end
end
