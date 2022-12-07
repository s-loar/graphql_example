class Mutations::MovieSearch < Mutations::BaseMutation
  argument :title_contains, String, required: true

  field :movie, [Types::MovieType], null: false
  field :errors, [String], null: false

  def resolve(title_contains:)
    movies = Movie.where("title LIKE ?", "%" + title_contains + "%" )

    { movies: movies, errors: []}
  end
end