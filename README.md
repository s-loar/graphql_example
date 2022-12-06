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

### Mutation to add data
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

