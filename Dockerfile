# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Python script into the container
COPY app.py .

# Install FastAPI and Uvicorn for serving the application
RUN pip install fastapi uvicorn

# Expose port 80 for HTTP traffic
EXPOSE 80

# Run the FastAPI application using Uvicorn when the container starts
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "80"]

