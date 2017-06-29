class AddNewcolumnsToBookingRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :booking_requests, :start_date, :datetime
    add_column :booking_requests, :end_date, :datetime
    add_column :booking_requests, :club_name, :string
  end
end
