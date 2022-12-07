# GraphQL Example Project

Getting experience with graphql

## Some examples for GraphiQL

### Query to get all users
query {
  users {
    firstName
    lastName
    email
    moviesCount
  }
}

### Query to get all movies
query {
  allMovies {
    id
    title
    year
    genre
  }
}

### Query to get one user
query {
  user(id: 1) {
    firstName
    lastName
    email
    moviesCount
    movies {
      title
      year
      genre
    }
  }
}

### Query to get one movie
query {
  movie(id: 11) {
    title
    year
    genre
    user {
      id
      email
      firstName
      lastName
    }
  }
}

### Query to get movie by partial title
query {
  movie_search(title_contains: "mor") 
	{
    title
    year
    genre
  }
}

### Mutation to add user
mutation {
  createUser(input: {
    firstName: "Peter",
    lastName: "Parker",
    email: "spiderman@mail.com"
  }) {
    user {
      id
      firstName
      email
    }
    errors
  }
}

### Mutation to add movie
mutation {
  createMovie(input: {
    title: "Morbius", 
    year: 2021, 
    genre: "Sci-fi", 
    userId: 11
  }) {
    movie {
      id
      title
      year
      genre
    }
    errors
  }
}