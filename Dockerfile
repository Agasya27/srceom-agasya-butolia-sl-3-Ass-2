# Use Python base image
FROM python:3.9-slim

# Set working directory inside the container
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy all project files into the container
COPY . .

# Expose port 8000 and run Django server
EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
