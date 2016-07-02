class BurgerPlaceSerializer < ActiveModel::Serializer
  attributes :id,:name,:address,:phone_no,:review_score,:post_code,:suburb,:city,:web_address
  has_many :reviews
  
end
