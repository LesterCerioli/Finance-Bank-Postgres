## Docker for Postgres

docker run --name my-postgres-container \
  -d \
  -p 5432:5432 \
  -e POSTGRES_DB=mydatabase \
  -e POSTGRES_USER=postgres \
  -e POSTGRES_PASSWORD=alamandra74367908 \
  -v pgdata:/var/lib/postgresql/data \
  my-postgres-image
