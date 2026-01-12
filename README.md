# React + Docker Recruitment Task (WSB-NLU)

This repository contains a simple single-page frontend application created as part of a recruitment task for WSB-NLU.

The goal of this project is to demonstrate a basic React setup, containerization using Docker with best practices, and clear technical documentation.

---

## Project Objectives

This project verifies the following skills:

- understanding of Git and basic version control workflows
- ability to build and containerize a frontend application using Docker
- use of multi-stage Docker builds
- preparation of clear and concise technical documentation

---


## Technologies Used

- React
- Vite
- Docker
- Nginx
- Node.js (build stage only)

---


## Project Structure


├── src/                React application source code

├── Dockerfile          Multi-stage Docker build (Node.js → Nginx)

├── nginx.conf          Nginx configuration for SPA routing

├── .dockerignore       Limits Docker build context

└── README.md           Project documentation

---


## Frontend Application

The frontend was generated using Vite + React.

The application:
- builds successfully
- runs correctly in development mode
- displays the default React start page

The purpose of the application itself is to serve as a simple example for Docker containerization rather than application logic.

---

## Run Locally (Development Mode)

Requirements:
- Node.js >= 18
- npm

Install dependencies and start the development server:

npm install

npm run dev

The application will be available at:

http://localhost:5173/

---


## Docker Setup (Production)

The application is containerized using Docker with a multi-stage build.

Build stages:

Stage 1
Builds the React application using Node.js

Stage 2
Serves the compiled static files using Nginx

The Nginx configuration supports client-side routing for a single-page application.

Build Docker image:

docker build -t react-docker-wsb .

Run Docker container:

docker run -p 8080:80 react-docker-wsb

The application will be available at:

http://localhost:8080/

---

## Notes

- The Docker image follows good practices:
- multi-stage build
- small final image size
- Nginx is used as a production-ready web server
- The repository is public and ready to be cloned and run locally

---

## Possible Improvements

- Add CI pipeline for automated builds
- Add basic linting and formatting
- Add environment-based configuration


