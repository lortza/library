class Book < ActiveRecord::Base
  has_many :reviews, as: :reviewable
end #Book
