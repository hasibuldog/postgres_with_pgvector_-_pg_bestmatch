# docker_postgres_vector_and_pg_bestmatch_extension
A simple docker config for postgres with pgvector and pg_bestmatch extension. The extension documentation can be found at *[the pgvector repo](https://www.markdownguide.orghttps://github.com/pgvector/pgvector)* and *[the pg_bestmatch repo](https://github.com/tensorchord/pg_bestmatch.rs)* including instructions for verification.

#### To run go to the root of the directoy and run docker compose up

- cd postgres_with_pgvector_-_pg_bestmatch
- docker compose up --build -d


The connection details and database name can be set within the docker-compose.yml files, the defaults are set to the following.

  - POSTGRES_USER= your_user_name
  - POSTGRES_PASSWORD= your_password
  - POSTGRES_DB= your_db_name


  ##### Needless to say, this is not meant to be for production use.
  ##### Thanks to this repo: https://github.com/stupid-programmer/docker_postgres_vector_extension

  