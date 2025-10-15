# Use an official Python runtime as a parent image
FROM python:3.9-slim-buster


# Expose port 8000 to the outside world
EXPOSE 8000

# Define environment variable
ENV NAME World
