json.array!(@proctors) do |proctor|
  json.extract! proctor, :id, :name
  json.url proctor_url(proctor, format: :json)
end
