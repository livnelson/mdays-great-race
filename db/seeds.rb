User.destroy_all
Hunt.destroy_all
JoinUh.destroy_all

user = User.create!(name: "Test", email: "test@test.com", on_hunt_number: 0, image: "", password: "123", ttc: "", start_time: "" )

hunt = Hunt.create!(clue: "", image: "", the_answer: "")

JoinUh.create!(user: user, hunt: hunt, user_answer: "")
