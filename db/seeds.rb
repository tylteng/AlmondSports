# users
travis = User.create(email: "travis@yahoo.com", username: "Travis", password: "123456", admin: true)

# categories
category1 = Category.create(name: 'NBA')

# articles
article1 = Article.create(title: 'John Wall Took The L', picture: 'http://i.cdn.turner.com/drp/nba/wizards/sites/default/files/styles/story_main_photo/public/getty-images-875510228.jpg?itok=PIoWxYz-', content: "The hopes the Washington Wizards have of climbing in the Eastern Conference playoff chase over the next few weeks will have to be done without All-Star point guard John Wall. As first reported by Candace Buckner of The Washington Post, Wall will miss the next six to eight weeks to have a procedure done on his troublesome left knee. The procedure is a clean-up of the knee, which will take place on Wednesday and be done by Dr. Richard D. Parker --  the orthopedic surgeon who did Wall's knee surgeries in 2016.", user_id: 1, category_id: 1)
