# Use an official Python runtime as a parent image
FROM python:3.12.11

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container at /app
COPY . .

# Command to run the application
# This will execute the test_harness.py script when the container starts
CMD ["python", "test_harness.py"]
