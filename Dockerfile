# Extend the official Rasa SDK image
FROM rasa/rasa:latest-full

# Use subdirectory as working directory
WORKDIR /app

# Change back to root user to install dependencies
USER root

# Copy actions folder to working directory
COPY ./config /app/config

# By best practices, don't run the code with root user
USER 1001