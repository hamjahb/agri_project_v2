json.extract! harvest_history, :id, :quantity, :price, :zone_id, :employee, :created_at, :updated_at
json.url harvest_history_url(harvest_history, format: :json)
