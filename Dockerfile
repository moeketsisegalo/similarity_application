# Use the official Python image as the base image
FROM python:3.11.0

# Set the working directory in the container
WORKDIR /app

# Copy the code files into the container
COPY . /app

# Install project dependencies
RUN pip3 install -r requirements.txt

# Set the command to run when the container starts
CMD [ "python", "semantic.py" ]
