# Use a lightweight Python base image
FROM python:3.10-slim

# Create and set working directory
WORKDIR /app

# Copy requirements first (better layer caching)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app
COPY . .

# Expose the Flask port
EXPOSE 5000

# Start the app
CMD ["python", "app.py"]
