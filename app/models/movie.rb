class Movie < ActiveRecord::Base
  has_many :reviews, as: :reviewable

  has_many :user_movies
  has_many :users, through: :user_movies

  RATING = ["G", "PG", "PG-13", "NC-17", "R", "X"]
  
end #Movie
