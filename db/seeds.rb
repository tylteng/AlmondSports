# users
travis = User.create(email: "travis@yahoo.com", username: "Travis", password: "123456", admin: true)

# categories
category1 = Category.create(name: 'NBA')

# articles
article1 = Article.create(title: 'John Wall Took The L', picture: 'http://i.cdn.turner.com/drp/nba/wizards/sites/default/files/styles/story_main_photo/public/getty-images-875510228.jpg?itok=PIoWxYz-', content: "The hopes the Washington Wizards have of climbing in the Eastern Conference playoff chase over the next few weeks will have to be done without All-Star point guard John Wall. As first reported by Candace Buckner of The Washington Post, Wall will miss the next six to eight weeks to have a procedure done on his troublesome left knee. The procedure is a clean-up of the knee, which will take place on Wednesday and be done by Dr. Richard D. Parker --  the orthopedic surgeon who did Wall's knee surgeries in 2016.", user_id: 1, category_id: 1, views: 0)

article2 = Article.create(title: 'BLAKE GRIFFIN TO THE PISTONS', picture: 'https://www.gannett-cdn.com/-mm-/cba46142da8fafe94960c089b9b502fb8d63f761/c=136-0-2264-1600&r=x513&c=680x510/local/-/media/2018/02/01/DetroitFreeP/DetroitFreePress/636531205114879543-020118-pistons-55.jpg', content: "Despite barely knowing his new team’s offense, Blake Griffin’s Pistons debut went as well as he or Detroit could have hoped. Griffin had arrived in town only the day before, and after the game, he noted that coach Stan Van Gundy had implemented just five go-to plays in the unfamiliar team’s arsenal. “We ran them to death, but they worked,” he said. Griffin had a game-high 24 points to go with 10 rebounds and a team-leading five assists in a 104-102 win over the Grizzlies.", user_id: 1, category_id: 1, views: 0)
