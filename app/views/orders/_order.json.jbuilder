json.extract! order, :id, :title, :details, :imgs, :quote, :complete, :starred, :client_id, :created_at, :updated_at
json.url order_url(order, format: :json)
