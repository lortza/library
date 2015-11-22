class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.string :author
      t.text :description
      t.date :release_date

      t.timestamps null: false
    end
  end
end
