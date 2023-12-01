# Use the official Python image as a parent image
FROM python:3.8

# Set the working directory in the container
WORKDIR /app

# Copy the main.py file and features folder to the container
COPY main.py .
COPY features/ ./features/

# Install Behave and any other dependencies
RUN pip install behave

# Specify the command to run on container start
CMD ["behave"]
