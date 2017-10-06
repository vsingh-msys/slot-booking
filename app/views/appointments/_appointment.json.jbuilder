json.extract! appointment, :id, :name, :book_date, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
