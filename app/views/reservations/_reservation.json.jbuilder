json.extract! reservation, :id, :index, :last_name, :first_name, :table_num, :time_until, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
