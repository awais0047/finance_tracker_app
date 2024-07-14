# Dockerfile

FROM python:3.9-slim

WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y libpq-dev gcc

COPY requirements.txt /app/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copy the project files
COPY . /app/

# Command to run the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
