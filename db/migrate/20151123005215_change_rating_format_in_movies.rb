class ChangeRatingFormatInMovies < ActiveRecord::Migration
  def change
    change_column :movies, :rating, :string
  end
end
