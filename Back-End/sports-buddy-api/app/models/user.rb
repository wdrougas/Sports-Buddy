class User < ApplicationRecord
    # Lookit me I'm a comment!
    has_many :user_games
    has_many :games, through: :user_games
    has_secure_password
    validates :username, uniqueness: true
    validates :email, uniqueness: true
end
