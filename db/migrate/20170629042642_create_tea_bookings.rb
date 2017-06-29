class CreateTeaBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :tea_bookings do |t|
      t.string :user_email
      t.datetime :start_date
      t.datetime :end_date
      t.integer :number_time_slots
      t.string :club_name

      t.timestamps
    end
  end
end
