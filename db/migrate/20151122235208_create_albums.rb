class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.string :band_name
      t.text :description
      t.date :release_date

      t.timestamps null: false
    end
  end
end
