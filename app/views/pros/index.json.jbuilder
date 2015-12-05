json.array!(@pros) do |pro|
  json.extract! pro, :id, :name, :description
  json.url pro_url(pro, format: :json)
end
