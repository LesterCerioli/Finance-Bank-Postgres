# Use the official PostgreSQL image from the Docker Hub
FROM postgres:15

# Set environment variables
ENV POSTGRES_DB=db001
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=salamandra74367908

# Expose PostgreSQL port
EXPOSE 5432

VOLUME ["/var/lib/postgresql/data"]

# Define the default command to run PostgreSQL
CMD ["postgres"]
