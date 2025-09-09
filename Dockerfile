# Use official Python image as base
FROM python:3.11-slim

# Set working directory in container
WORKDIR /app

# Copy local files to container
COPY app.py /app

# Install Flask
RUN pip install --no-cache-dir flask

# Expose the port your app runs on
EXPOSE 8085

# Command to run the app
CMD ["python", "app.py"]
