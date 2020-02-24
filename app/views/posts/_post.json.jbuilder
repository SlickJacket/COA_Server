json.extract! post, :id, :name, :post_date, :content, :img, :user_id, :created_at, :updated_at
json.url post_url(post, format: :json)
