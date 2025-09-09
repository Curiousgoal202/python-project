# Use official Python image as base
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy app file(s)
COPY app.py /app

# Install Flask directly (if needed)
RUN pip install --no-cache-dir flask

# Expose the port
EXPOSE 8085

# Run the app
CMD ["python", "app.py"]
