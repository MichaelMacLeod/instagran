json.array!(@post) do |post|
  json.extract! post, :id, :name
  json.url post_url(post, format: :json)
end
