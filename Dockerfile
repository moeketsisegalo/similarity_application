# This Dockerfile defines a multi-stage build. In the first stage, a builder image is created using the python:3.9 base image.
# The necessary dependencies for Spacy are installed, including the Spacy module (spacy==3.5.3) and the English language models (en_core_web_sm and en_core_web_md). 
# The project dependencies listed in requirements.txt are also installed.

# In the second stage, a final image is created using the same python:3.9 base image.
# The project files are copied into the container. Once again, the Spacy module and English language models are installed in this final image.
# Finally, the entry point command is set to execute the semantic.py file when the container is run.

# Stage 1: Builder image
FROM python:3.9 AS builder

# Set the working directory inside the container
WORKDIR /build

# Install spacy module and download the required spacy model
RUN pip install spacy==3.5.3 && python -m spacy download en_core_web_sm && python -m spacy download en_core_web_md

# Copy the requirements.txt file into the container
COPY requirements.txt /build/requirements.txt

# Install project dependencies
RUN pip install -r requirements.txt

# Stage 2: Final image
FROM python:3.9 

# Set the working directory inside the container
WORKDIR /app

# Copy the project files into the container
COPY . /app

# Install spacy module in the final image
RUN pip install spacy==3.5.3 && python -m spacy download en_core_web_sm && python -m spacy download en_core_web_md

# Set the entry point command
CMD ["python", "semantic.py"]

