# Use a Python base image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy your project files to the container
COPY . .

# Install the dependencies
RUN pip install -r requirements.txt

# Expose the port that the application will use
EXPOSE 5000

# Command to run the application
CMD ["python", "index.py"]