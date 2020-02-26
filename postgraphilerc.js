module.exports = {
  options: {
    connection: 'postgres://graphql@data/postgres',
    enhanceGraphiql: true,
    host: 'server',
    jwtSecret: 'llama',
    retryOnInitFail: true
  }
}
