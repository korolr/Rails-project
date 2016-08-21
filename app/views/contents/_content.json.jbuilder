json.extract! content, :id, :title, :prev, :content, :created_at, :updated_at
json.url content_url(content, format: :json)