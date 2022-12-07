module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    # Get all users
    field :users, [Types::UserType], null: false
    def users
      User.all
    end

    # Get all movies
    field :allMovies, [Types::MovieType], null: false 
    def allMovies
      Movie.all
    end

    # field :movie_search, [Types::MovieType], null: false do 
    #   puts "*** argument - #{argument.inspect}"
    #   argument :title_contains, String, required: true
    # end
    # def movieSearch(title_contains:)
    #   puts "*** title_contains - #{title_contains.inspect}"
    #   Movie.where("title LIKE ?", "%" + title_contains + "%" )
    # end

    # Get a specific user
    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
    end
    def user(id:)
      User.find(id)
    end

    # Get a specific movie
    field :movie, Types::MovieType, null: false do
      argument :id, ID, required: true
    end
    def movie(id:)
      Movie.find(id)
    end
  end
end
