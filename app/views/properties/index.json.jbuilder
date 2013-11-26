json.array!(@properties) do |property|
  json.extract! property, :name, :property_id
  json.url property_url(property, format: :json)
end
