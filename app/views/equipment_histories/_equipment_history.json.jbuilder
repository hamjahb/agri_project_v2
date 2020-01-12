json.extract! equipment_history, :id, :date, :task, :description, :next_maintinance, :equipment_id, :employee, :created_at, :updated_at
json.url equipment_history_url(equipment_history, format: :json)
