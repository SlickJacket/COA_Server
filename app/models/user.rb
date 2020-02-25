class User < ApplicationRecord
    has_many :posts
    has_many :you_videos
    has_many :insta_products
    has_many :clients
    has_many :orders, through: :clients
end
