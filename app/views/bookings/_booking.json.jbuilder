json.extract! booking, :id, :user_id, :user_email, :date, :club_name, :created_at, :updated_at
json.url booking_url(booking, format: :json)
