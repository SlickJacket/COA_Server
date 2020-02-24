json.extract! you_video, :id, :youtube_link, :title, :description, :user_id, :created_at, :updated_at
json.url you_video_url(you_video, format: :json)
