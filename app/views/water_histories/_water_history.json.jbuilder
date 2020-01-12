json.extract! water_history, :id, :start_time, :end_time, :quantity, :zone_id, :employee, :created_at, :updated_at
json.url water_history_url(water_history, format: :json)
