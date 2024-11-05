-- Create the 'vector' extension within the database that is set in the docker-compose.yml
CREATE EXTENSION IF NOT EXISTS vector;
CREATE EXTENSION IF NOT EXISTS pg_bestmatch;