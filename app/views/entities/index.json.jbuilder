json.array!(@entities) do |entity|
  json.extract! entity, :name, :system_id
  json.url entity_url(entity, format: :json)
end
