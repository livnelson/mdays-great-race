User.destroy_all
Hunt.destroy_all
JoinUh.destroy_all

user = User.create!(name: "Test", email: "test@test.com", on_hunt_number: 0, image: "", password: "123", ttc: "", start_time: "")



# hunt = Hunt.create!(clue: "", image: "", the_answer: "")

10.times {User.create!(name: Faker::Internet.username, email: Faker::Internet.safe_email, on_hunt_number: rand(1..10), image: "", password: Faker::Internet.password, ttc: rand(1..10), start_time: rand(1..10))}
10.times { Hunt.create!(clue: Faker::Lorem.sentence, image: "", the_answer: Faker::Lorem.sentence) }
10.times { JoinUh.create!(user: User.all.sample, hunt: Hunt.all.sample, user_answer: Faker::Lorem.sentence) }
