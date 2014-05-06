json.array!(@products) do |product|
  json.extract! product, :id, :title, :content
  json.url product_url(product, format: :json)
end
