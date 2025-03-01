# Use a base image
FROM python:3.9  # Use Python 3.9 as the base image

# Set the working directory inside the container
WORKDIR /app

# Copy all files from the current directory to /app in the container
COPY . /app

# Install dependencies (if a requirements.txt file exists)
RUN pip install --no-cache-dir -r requirements.txt

# Expose a port (Change if needed)
EXPOSE 8080

# Set the default command to run the application
CMD ["python", "app.py"]  # Change "app.py" to your actual main script
