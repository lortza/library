class Album < ActiveRecord::Base
  has_many :reviews, as: :reviewable
end #Album
