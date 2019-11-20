json.extract! event, :id, :name, :type_of_event, :description, :teachers, :location, :performers, :start_time, :end_time, :created_at, :updated_at
json.url event_url(event, format: :json)
