json.array!(@models) do |model|
  json.extract! model, :name
  json.url model_url(model, format: :json)
end
