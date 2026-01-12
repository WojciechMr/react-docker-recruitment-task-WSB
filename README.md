# React + Docker Recruitment Task (WSB-NLU)

This repository contains a simple frontend application created as part of a recruitment task for WSB-NLU.

The purpose of this project is to demonstrate:
- basic frontend setup with React
- Docker containerization using best practices
- proper Git repository structure
- clear and concise technical documentation

---

## Task Objectives

The project verifies the following skills:
- understanding of version control basics (Git)
- ability to containerize applications using Docker
- application of good containerization practices (multi-stage builds)
- ability to prepare and document a simple application

---

## Technologies Used

- React
- Vite
- Docker
- Nginx
- Node.js (build stage only)

---

## Project Structure

.
├── src/                React application source code  
├── Dockerfile          Multi-stage Docker build (Node.js → Nginx)  
├── nginx.conf          Nginx configuration for SPA routing  
├── .dockerignore       Limits Docker build context  
└── README.md           Project documentation  

---

## Frontend Boilerplate

The frontend was generated using Vite + React.

The application:
- builds correctly
- runs in development mode
- displays the default start page

---

## Run Locally (Development Mode)

Requirements:
- Node.js >= 18
- npm

Install and start:

npm install  
npm run dev  

The application will be available at:

http://localhost:5173/

---

## Docker Setup (Production)

The application is containerized using Docker with a multi-stage build.

Stage 1:
Build the React application using Node.js

Stage 2:
Serve static files using Nginx

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


