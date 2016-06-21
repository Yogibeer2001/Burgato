# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Review.all.each(&:destroy)
BurgerPlace.all.each(&:destroy)
User.all.each(&:destroy)




user1 = User.create(:email => 'ephrem2000@yahoo.com',
                    :password => '123456')
user2 = User.create(:email => 'yogi2000@gmail.com',
                    :password => '123456')

burger_places1 = BurgerPlace.create(name: 'Collins Burger', address: 'Collin street',phone_no: '+45 4534 343', review_score: '4',
post_code: '3000', suburb: 'Melbourne',city: 'Melbourne', web_address: 'http://citybuger.com.au')
burger_places2 = BurgerPlace.create(name: 'Smith Burger', address: 'Smith street',phone_no: '+45 3424 343', review_score: '5',
post_code: '3015', suburb: 'Footscray',city: 'Marrybyrong', web_address: 'http://smithbuger.com.au')


burger_places1.reviews.create(bun: "3",patty: "3",chips: "3",atmosphere: "3",comment: "it is a good place",value: "3", user: user1)
burger_places2.reviews.create(bun: "4",patty: "3",chips: "5",atmosphere: "3",comment: "it is very good place",value: "3", user: user1)
