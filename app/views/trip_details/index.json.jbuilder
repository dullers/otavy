json.array!(@trip_details) do |trip_detail|
  json.extract! trip_detail, :id, :trip_id, :index, :name, :description, :duration
  json.url trip_detail_url(trip_detail, format: :json)
end
