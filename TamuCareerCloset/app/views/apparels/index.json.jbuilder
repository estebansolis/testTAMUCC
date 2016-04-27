json.array!(@apparels) do |apparel|
  json.extract! apparel, :id, :Apparel_ID, :Sex, :Article, :Size, :Status
  json.url apparel_url(apparel, format: :json)
end
