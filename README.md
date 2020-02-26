# Llama Farm As A Service

This repo contains the contents of a live coding demo presented at the [26 Feb 2020 Helsinki PostgreSQL Meetup](https://www.meetup.com/Helsinki-PostgreSQL-Meetup/events/268321882/), "Live-coding a server from scratch with Postgraphile". It sets up a server providing a GraphQL API for a llama farm, based on a containerised a PostgreSQL database and [Postgraphile](https://www.graphile.org/) instance.

By the end, read access is public, while modifications to llamas are allowed if the user is the llama's herder. Authentication is based on JWT tokens.

To run the final demo, you'll need [Docker Compose](https://docs.docker.com/compose/):

```sh
docker-compose up --build
```

Then open the page http://localhost:5000/graphiql in a browser.

To clear out the container volumes between configuration changes:

```sh
docker-compose down
```

To create a JWT token that'll encode the user id, do something like this:

```sh
npm install --no-save jsonwebtoken
node
```

```js
const jwt = require('jsonwebtoken')
const token = jwt.sign({ aud: 'postgraphile', id: 3 }, 'llama') // shared secret
```

And then include a header `Authorization: Bearer ${token}` in your HTTP requests.
