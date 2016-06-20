class User < ActiveRecord::Base
  has_many :burger_places
  has_many :reviews

end
