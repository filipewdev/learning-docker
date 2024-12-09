# Official Python runtime
FROM python:3.12-rc-bookworm

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the /app folder in the container
COPY . /app

# Install required dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Set the env variable for Flask
ENV FLASK_APP=app.py

# Run the command to start the Flask application
CMD ["flask", "run", "--host=0.0.0.0"]