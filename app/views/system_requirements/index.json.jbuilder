json.array!(@system_requirements) do |system_requirement|
  json.extract! system_requirement, :title, :description, :system_id
  json.url system_requirement_url(system_requirement, format: :json)
end
