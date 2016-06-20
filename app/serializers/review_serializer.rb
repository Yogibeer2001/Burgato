class ReviewSerializer < ActiveModel::Serializer
  attributes :id,:bun,:patty,:chips,:atmosphere,:comment,:value, :user_id, :burger_place_id
end
