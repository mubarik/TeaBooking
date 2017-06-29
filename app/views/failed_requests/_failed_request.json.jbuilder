json.extract! failed_request, :id, :user_id, :user_email, :start_date, :end_date, :number_slots, :club_name, :created_at, :updated_at
json.url failed_request_url(failed_request, format: :json)
