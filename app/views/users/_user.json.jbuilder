json.extract! user, :id, :first_name, :last_name, :email, :password_digest, :phone_number, :title, :profile_img, :cover_img, :bio, :created_at, :updated_at
json.url user_url(user, format: :json)
