FROM ubuntu:22.04 AS deployed-docker

# 1. Use the official slim Python image as a base
# This image is much smaller than Ubuntu and is optimized for Python.
FROM python:3.10-slim

# 2. Set a working directory in the container
WORKDIR /app

# 3. Copy only the requirements file first to leverage Docker's build cache
# This layer only gets rebuilt if requirements.txt changes.
#COPY requirements.txt .

# 4. Install the Python dependencies using pip
#RUN pip install --no-cache-dir -r requirements.txt

# 5. Copy the rest of your application code into the image
# This layer will be rebuilt if any of your code files change.
COPY . .

# 6. Define the command to run your application
CMD ["python3", "your_app.py"]
