# Users
user_data = {
  email: 'api@example.com',
  password: '123456'
}

user_one = User.create!(user_data)

user_data = {
  email: 'api2@example.com',
  password: '654321'
}

user_two = User.create!(user_data)

#trips
trip_one_data = {
  name: "Italy's best pizza places",
  author_id: user_one.id
}

trip_one = Trip.create!(trip_one_data)

trip_two_data = {
  name: "Best Islands in Panama",
  author_id: user_two.id
}

trip_two = Trip.create!(trip_two_data)


trip_three_data = {
  name: "My honymoon in Madives",
  author_id: user_two.id
}

trip_three = Trip.create!(trip_three_data)


trip_four_data = {
  name: "Top mountains I've ever climbed",
  author_id: user_one.id
}

trip_four = Trip.create!(trip_four_data)

# Following
following_one_data = {
  author_id: user_two.id,
  follower_id: user_one.id
}

following = Following.create!(following_one_data)
