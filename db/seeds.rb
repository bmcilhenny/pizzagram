# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
brendan = User.create(name: "Brendan", email: 'bmcilhen@gmail.com', profile_pic_url: "http://www.craveonline.com/assets/uploads/2016/09/douchebag.jpg")
chris = User.create(name: "Chris", email: 'chris@gmail.com', profile_pic_url: "https://thoughtcatalog.files.wordpress.com/2014/09/shutterstock_185457539.jpg?w=700&h=500")

Pizza.destroy_all
p1 = Pizza.create(user: brendan, pizza_url:"http://www.homebeccanomics.com/wp-content/uploads/2012/10/IMG_33431.jpg", tally: 5, restaurant_name: "Guagino's Pizza")
p2 = Pizza.create(user: chris, pizza_url:"https://tabelog.com/imgview/original?id=r901046958727", tally: 2, restaurant_name: "Guagino's Pizza")

Comment.destroy_all
c1 = Comment.create(pizza: p1, user: brendan, content: "Cheesy!")
c2 = Comment.create(pizza: p1, user: chris, content: "Oolala!")
c2 = Comment.create(pizza: p2, user: brendan, content: "How much? Looks good!")
c2 = Comment.create(pizza: p2, user: chris, content: "Delish!")
c2 = Comment.create(pizza: p2, user: brendan, content: "Crunchy crust?")
c2 = Comment.create(pizza: p1, user: chris, content: "Scrumptious!")
