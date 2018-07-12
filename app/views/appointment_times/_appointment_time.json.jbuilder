json.extract! appointment_time, :id, :date_time, :name, :contact_info, :created_at, :updated_at
json.url appointment_time_url(appointment_time, format: :json)
