# Use an official Python runtime as a base image.
FROM python:3.9-slim

# Set the working directory inside the container.
WORKDIR /app

# Copy the requirements file into the container.
COPY requirements.txt .

# Install the Python dependencies.
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application code into the container.
COPY . .

# Expose the port that your application will use.
EXPOSE 8080

# Set an environment variable (optional).
ENV PORT 8080

# Define the command to run your application.
CMD ["python", "app.py"]
