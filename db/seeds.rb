trip_names = [  "Romantic Spots for Honeymoons",
                "Top Island Getaways",
                "Most Romantic Destinations",
                "Top Spots for Skiing" ]
trip_names.each do |trip_name|
  Trip.create(name: trip_name)
end

# User one
user_one = {
  email: 'api@example.com',
  password: '123456'
}

User.create!(user_one)
# User two
user_two = {
  email: 'api2@example.com',
  password: '654321'
}

User.create!(user_two)

# Following one
following_one = {
  author_id: 1,
  follower_id: 2
}

Following.create!(following_one)
