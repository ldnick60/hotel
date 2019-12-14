json.extract! user_info, :id, :user_id, :first_name, :last_name, :phone, :dob, :created_at, :updated_at
json.url user_info_url(user_info, format: :json)
