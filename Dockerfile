# Use the official Redis image as the base image
FROM redis:latest

# Set the working directory to /app
WORKDIR /app

# Copy the Redis configuration file
COPY redis.conf /etc/redis/redis.conf

# Expose the Redis port
EXPOSE 6379

# Start Redis server with the specified configuration file
CMD ["redis-server", "/etc/redis/redis.conf"]
