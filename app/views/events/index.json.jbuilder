json.array!(@events) do |event|
  json.extract! event, :id, :category, :age_group, :topic, :event_date
  json.url event_url(event, format: :json)
end
