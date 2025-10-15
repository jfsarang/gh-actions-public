# Use the official Ubuntu 22.04 LTS image as a base
FROM ubuntu:22.04

# 1. Combine apt-get update, install, and cleanup in a single RUN command
#    - Reduces image layers and ensures package lists are fresh for the install.
#    - `--no-install-recommends` avoids installing unnecessary packages.
#    - `rm -rf /var/lib/apt/lists/*` cleans up the apt cache to reduce image size.
RUN apt-get update && apt-get install -y --no-install-recommends \
    python3-jwt \
    python3-wheel \
    python3-setuptools \
    python3-cryptography \
    && rm -rf /var/lib/apt/lists/*

# --- Your application code would go here ---

# Example: Set a working directory
# WORKDIR /app

# Example: Copy your application files into the image
# COPY . .

# Example: Define the command to run when the container starts
# CMD ["python3", "your_app.py"]
