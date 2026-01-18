🚀 Python Flask App with Complete CI/CD Pipeline (Jenkins + Docker + AWS EC2)

A production-ready Python Flask application with a fully automated CI/CD pipeline using Jenkins, Docker, and AWS EC2.
This project demonstrates real-world DevOps practices including testing, containerization, image publishing, and zero-downtime deployment.

📌 Why This Project Matters (Recruiter View)

This project is not just a Flask app — it shows that I can:

✅ Build and test Python applications

✅ Write clean Jenkins pipelines

✅ Use Docker the right way

✅ Push images securely to Docker Hub

✅ Deploy automatically to a cloud server (AWS EC2)

✅ Follow CI/CD best practices used in real companies

🛠️ Tech Stack
Backend: Python, Flask

Testing: Pytest

CI/CD: Jenkins (Declarative Pipeline)

Containerization: Docker

Container Registry: Docker Hub

Cloud: AWS EC2 (Ubuntu)

Version Control: Git & GitHub

📂 Project Structure
python-flask-app/
│
├── app.py                 # Flask application entry point
├── requirements.txt       # Python dependencies
├── Dockerfile              # Docker image configuration
├── Jenkinsfile             # CI/CD pipeline
├── tests/
│   └── test_app.py         # Pytest test cases
└── README.md

⚙️ CI/CD Pipeline Overview

Every code push automatically triggers the pipeline below:

🔁 Pipeline Flow

Checkout Code

Pulls the latest code from GitHub

Setup Python Virtual Environment

Creates an isolated Python environment

Install Dependencies

Installs all required packages from requirements.txt

Run Automated Tests

Executes Pytest to ensure code quality

Build Docker Image

Builds a Docker image for the Flask app

Push Image to Docker Hub

Authenticates securely using Jenkins credentials

Deploy to AWS EC2

Stops old container

Pulls latest image

Runs new container automatically

🧪 Testing

Tests are written using Pytest and are executed automatically in the pipeline.

pytest


This ensures only tested and verified code gets deployed.

🐳 Docker
Build Image Locally
docker build -t abdulahad9049/python-flask-app:latest .

Run Container
docker run -d -p 5000:5000 abdulahad9049/python-flask-app:latest

☁️ AWS EC2 Deployment

EC2 runs Ubuntu

Docker installed on the server

Jenkins connects via SSH

Application exposed on port 5000

Access the app:

http://<EC2_PUBLIC_IP>:5000

🔐 Security & Credentials

All sensitive data is handled securely using Jenkins Credentials:

Docker Hub username & password

EC2 SSH private key

⚠️ No secrets are hardcoded in the repository.

📜 Jenkinsfile (CI/CD Pipeline)

This project uses a Declarative Jenkins Pipeline with stages for:

Environment setup

Testing

Docker build & push

Remote deployment via SSH

This reflects how CI/CD pipelines are written in real production environments.

📈 What I Learned

End-to-end CI/CD pipeline design

Docker image optimization

Jenkins credential management

Automated deployments to cloud servers

DevOps workflow used in real companies

🚀 Future Improvements

Add Nginx reverse proxy

Use Docker Compose

Add GitHub webhooks

Implement blue-green deployment

Add monitoring (Prometheus / Grafana)

👨‍💻 Author

Abdul Ahad
DevOps Enthusiast  | Docker | Jenkins | AWS

📌 GitHub: https://github.com/Ahad9049

📌 Docker Hub: https://hub.docker.com/r/abdulahad9049/python-flask-app
