class Book < ActiveRecord::Base
  has_many :reviews, as: :reviewable
  has_many :user_books
  has_many :users, through: :user_books
end #Book
