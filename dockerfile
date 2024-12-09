# Official Python runtime
FROM python:3.12-rc-bookworm

# Volumes can be added via dockerfile, however docker will attach a random name to it
# VOLUME /app/data

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the /app folder in the container
COPY . /app

# Install required dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Set the env variable for Flask
ENV FLASK_APP=app.py

# Add labels to the image
# LABEL Formatting Option 1
# LABEL "com.example.vendor"="Big Star Collectibles"
# LABEL version="1.0"
# LABEL description="The Big Star Collectibles Website \
# using the Python base image and building with docker for consistent CI/CD."

# LABEL Formatting Option 2
# LABEL "com.example.vendor"="Big Star Collectibles" version="1.0" description="The Big Star Collectibles Website \
# using the Python base image and building with docker for consistent CI/CD."

# LABEL Formatting Option 3
LABEL "com.example.vendor"="Big Star Collectibles" \
version="1.0" \
description="The Big Star Collectibles Website \
using the Python base image and building with docker for consistent CI/CD."

# Run the command to start the Flask application
CMD ["flask", "run", "--host=0.0.0.0"]