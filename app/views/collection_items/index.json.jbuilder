json.array!(@collection_items) do |collection_item|
  json.extract! collection_item, :id, :collection_group_id, :name, :description, :imageUrl1, :imageUrl2, :imageUrl3, :imageUrl4, :imageUrl5, :imageUrl6, :vidUrl1
  json.url collection_item_url(collection_item, format: :json)
end
