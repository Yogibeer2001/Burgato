class CreateBurgerPlaces < ActiveRecord::Migration
  def change
    create_table :burger_places do |t|
      t.string :name
      t.string :address
      t.string :phone_no
      t.string :review_score
      t.integer :post_code
      t.string :suburb
      t.string :city
      t.string :web_address
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
