# Similarity App

## Table of Contents

- [Similarity App](#similarity-app)
  - [Description](#Description)
  - [Installation](#installation)
  - [Usage](#usage)
  - [Credits](#credits)

## Description
The Semantic Similarity App is a special tool that shows how similar two sentences are using the spaCy library. It helps computers understand our words and sentences, which is important for answering questions and finding information. With this app, we can quickly check the similarity between sentences and help computers become better at understanding and connecting sentences. It's like a special tool that helps computers talk and understand us better.

## Installation

### To build and run the application, Docker needs to be installed on your system.

1. Install Docker by visiting the official Docker website and downloading the appropriate version for your operating system: https://www.docker.com/get-started

this command will verify if docker is installed.
```bash
 docker run hello-world
```
   
2. Clone this repository:
```bash
git clone https://github.com/moeketsisegalo/similarity_application.git
```
   
3. Navigate to the project directory:
```bash
cd similarity_application
```

4. Build the Docker image:
```bash
docker build -t similarity_app .
```
![Screenshot](Screenshots_semantic/Screenshot%202023-05-17%20at%2013.17.50.png)

## Usage
5. Run the Docker container:
```bash
docker run -it similarity_app
```
![Screenshot](Screenshots_semantic/Screenshot%202023-05-17%20at%2013.24.31.png)

## Credits
Author: Moeketsi Segalo,This project was developed solely by myself using Python.




 

   
