json.array!(@blocks) do |block|
  json.extract! block, :id, :day, :time
  json.url block_url(block, format: :json)
end
