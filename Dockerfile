# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y libpq-dev gcc

# Copy the requirements file into the container
COPY requirements.txt /app/

# Upgrade pip and install the dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copy the rest of the application code into the container
COPY . /app/

# Ensure the test.sh script is executable
RUN chmod +x /app/FinanceTracker/FinTech/test.sh

# Command to run the application (this can be overridden in the docker run command)
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
