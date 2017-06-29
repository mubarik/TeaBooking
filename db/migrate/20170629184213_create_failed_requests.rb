class CreateFailedRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :failed_requests do |t|
      t.belongs_to :user, foreign_key: true
      t.string :user_email
      t.datetime :start_date
      t.datetime :end_date
      t.integer :number_slots
      t.string :club_name

      t.timestamps
    end
  end
end
