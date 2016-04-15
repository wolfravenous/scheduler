json.array!(@advisors) do |advisor|
  json.extract! advisor, :id, :name
  json.url advisor_url(advisor, format: :json)
end
