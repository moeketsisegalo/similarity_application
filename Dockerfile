# Stage 1: Builder image
FROM pypy:latest

# Set the working directory inside the container
WORKDIR /build

# Install spacy module and download the required spacy model
RUN pip install spacy==3.5.3 && python -m spacy download en_core_web_sm && python -m spacy download en_core_web_md

# Copy the requirements.txt file into the container
COPY requirements.txt /build/requirements.txt

# Install project dependencies
RUN pip install -r requirements.txt

# Stage 2: Final image
FROM pypy:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the project files into the container
COPY . /app

# Install spacy module in the final image
RUN pip install spacy==3.5.3 && python -m spacy download en_core_web_sm && python -m spacy download en_core_web_md

# Set the entry point command
CMD ["python", "semantic.py"]
