json.extract! tea_booking, :id, :user_email, :start_date, :end_date, :number_time_slots, :club_name, :created_at, :updated_at
json.url tea_booking_url(tea_booking, format: :json)
