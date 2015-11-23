class Game < ActiveRecord::Base
  has_many :reviews, as: :reviewable
end #Game
