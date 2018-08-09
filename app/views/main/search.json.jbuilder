json.products do
  json.array!(@products) do |product|
    json.name product.name
    json.url product_path(product)
  end
end

json.posts do
  json.array!(@posts) do |post|
    json.name post.title
    json.description truncate(post.description, length: 50)
    json.url post_path(post)
  end
end