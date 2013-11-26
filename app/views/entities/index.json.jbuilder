json.array!(@entities) do |entity|
  json.extract! entity, :name, :model_id
  json.url entity_url(entity, format: :json)
end
