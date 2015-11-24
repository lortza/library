class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_albums
  has_many :albums, through: :user_albums

  has_many :user_books
  has_many :books, through: :user_books

  has_many :user_games
  has_many :games, through: :user_games

  has_many :user_movies
  has_many :movies, through: :user_movies
end #User
