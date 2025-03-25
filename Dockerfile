# Use an official lightweight Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy application files
COPY . .

# Check if requirements.txt exists before installing dependencies
RUN if [ -f requirements.txt ]; then pip install --no-cache-dir -r requirements.txt; fi

# Run the application
CMD ["python", "main.py"]
