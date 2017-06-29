class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.belongs_to :user, foreign_key: true
      t.string :user_email
      t.datetime :date
      t.string :club_name

      t.timestamps
    end
  end
end
