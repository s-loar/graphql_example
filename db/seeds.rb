10.times do |i|
  user = User.create(
    email: "user_#{i}@example.com",
    first_name: "User#{i}",
    last_name: "Farkel"
  )

  Movie.create(
    user: user,
    title: "Movie_#{i}",
    year: 2022,
    genre: "Western"
  )
end
