class RemoveUserIdFromBurgerPlace < ActiveRecord::Migration
  def change
    remove_column :burger_places, :user_id, :integer
  end
end
