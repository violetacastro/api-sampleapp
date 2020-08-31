trip_names = [  "Romantic Spots for Honeymoons",
                "Top Island Getaways",
                "Most Romantic Destinations",
                "Top Spots for Skiing" ]
trip_names.each do |trip_name|
  Trip.create(name: trip_name)
end

user_one = [
  email: 'api@example.com',
  password: '123456'
]
