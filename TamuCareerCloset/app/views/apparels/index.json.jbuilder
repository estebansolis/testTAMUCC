json.array!(@apparels) do |apparel|
  json.extract! apparel, :id, :Apparel_ID, :Sex, :Article, :Size
  json.url apparel_url(apparel, format: :json)
end
