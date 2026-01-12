# React + Docker Recruitment Task (WSB-NLU)

This repository contains a simple frontend application created as a recruitment task for WSB-NLU.  
The goal of the task was to demonstrate basic frontend setup, Docker containerization, Git usage, and good container practices.

---

##  Task Objectives
The project verifies:
- understanding of basic version control (Git)
- ability to work with Docker
- application of good containerization practices
- ability to prepare and document a simple application

---

##  Technologies Used
- React
- Vite
- Docker
- Nginx
- Node.js (build stage only)

---

##  Project Structure
- `src/` – React application source code  
- `Dockerfile` – multi-stage Docker build (Node.js → Nginx)  
- `nginx.conf` – Nginx configuration for SPA routing  
- `.dockerignore` – limits Docker build context  
- `README.md` – project documentation  

---

##  Frontend Boilerplate
A simple React application was generated using **Vite + React**.  
The application starts correctly and displays the default start page.

### Run locally (development mode)
**Requirements:**
- Node.js >= 18
- npm

```bash
npm install
npm run dev
