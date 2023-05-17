# Similarity App

This is a sample application that demonstrates text similarity using the spaCy library.

## Building and Running the Application

To build and run the application, Docker needs to be installed on your system.

1. Clone this repository:

   ```bash
   git clone https://github.com/your-username/similarity-app.git
   
2.Navigate to the project directory:
cd similarity-app

3.Build the Docker image:
docker build -t similarity_app .
     
 4.Run the Docker container:
 docker run -it similarity_app
     
     
### Stage 1: Builder image
The builder image sets up the necessary environment and installs the required dependencies.

It uses the python:3.9 base image.
The working directory inside the container is set to /build.
The spacy module is installed using pip and the en_core_web_sm and en_core_web_md models are downloaded.
The requirements.txt file is copied into the container.
Project dependencies are installed using pip based on the requirements.txt file.
### Stage 2: Final image
The final image sets up the application and prepares it for execution.

It uses the python:3.9 base image.
The working directory inside the container is set to /app.
The project files are copied into the container.
The spacy module is installed using pip and the en_core_web_sm and en_core_web_md models are downloaded.
The entry point command is set to python semantic.py, which runs the semantic.py script when the container is started.
Notes

The Docker image includes the spacy module and the en_core_web_sm and en_core_web_md models required for text similarity.
Make sure you have a stable internet connection during the build process to download the necessary dependencies and models.
Feel free to explore and modify the application as needed.

For more information on spaCy and its capabilities, refer to the spaCy documentation.

 

   
