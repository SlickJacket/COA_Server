class User < ApplicationRecord
    has_secure_password
    validates_uniqueness_of :email

    has_many :posts
    has_many :you_videos
    has_many :insta_products
    has_many :clients
    has_many :orders, through: :clients

end
