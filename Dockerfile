# Use an official Ubuntu runtime as a parent image
FROM ubuntu:20.04

# Install dependencies
RUN apt-get update && apt-get install -y \
    fortune-mod \
    cowsay \
    netcat \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Make port 4499 available to the world outside this container
EXPOSE 4499

# Run wisecow.sh when the container launches
CMD ["sh", "./wisecow.sh"]
