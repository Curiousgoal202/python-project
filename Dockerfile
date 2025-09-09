# Use official Python image as base
FROM python:3.11-slim

# Set working directory in container
WORKDIR /app

# Copy requirements first for Docker layer caching
COPY requirements.txt /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app files
COPY . /app

# Expose the port your app runs on
EXPOSE 8085

# Command to run the app
CMD ["python3", "app.py"]
