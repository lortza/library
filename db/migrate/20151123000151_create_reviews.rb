class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :name
      t.integer :rating
      t.text :comment
      t.belongs_to :reviewable, polymorphic: true
      t.timestamps null: false
    end #table
    add_index :reviews, [:reviewable_id, :reviewable_type]
  end #change
end #CreateReviews
