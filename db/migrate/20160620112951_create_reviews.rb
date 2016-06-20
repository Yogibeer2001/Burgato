class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :bun
      t.integer :patty
      t.integer :chips
      t.integer :atmosphere
      t.string :comment
      t.integer :value
      t.references :user, index: true, foreign_key: true
      t.references :burger_place, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
