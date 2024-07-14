# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Create a directory for the app
WORKDIR /app

# Install dependencies
COPY requirements.txt /app/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt



# Copy the project files
COPY . /app/

# Ensure test.sh is executable
RUN chmod +x /app/FinanceTracker/FinTech/test.sh

# Expose port 8000 for the app
EXPOSE 8000

# Run the app
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
