class Movie < ActiveRecord::Base
  has_many :reviews, as: :reviewable

  RATING = ["G", "PG", "PG-13", "NC-17", "R", "X"]
  
end #Movie
