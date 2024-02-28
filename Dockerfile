# Use an official Android development environment as a parent image
FROM thyrlian/android-sdk

# Install basic tools
RUN apt-get update && apt-get install -y \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . /usr/src/app

# Make port 4000 available to the world outside this container
EXPOSE 4000

# Define environment variable
ENV NAME AndroidDev
