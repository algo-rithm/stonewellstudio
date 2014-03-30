json.array!(@collection_groups) do |collection_group|
  json.extract! collection_group, :id, :name
  json.url collection_group_url(collection_group, format: :json)
end
