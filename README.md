# 🚀 Production-Ready Flask App with Automated CI/CD  
### Jenkins • Docker • AWS EC2

A fully automated, production-style CI/CD pipeline built around a Python Flask application.  

This project demonstrates real-world DevOps practices including automated testing, containerization, secure image publishing, and cloud deployment.

---

## 💼 Why This Project Matters

This is not just a Flask app — it proves hands-on experience with:

- 🔄 End-to-end CI/CD pipeline design  
- 🧪 Automated testing before deployment  
- 🐳 Containerized application delivery  
- 🔐 Secure credential management  
- ☁️ Cloud-based production deployment  
- 🚀 Automated remote releases  

This reflects how modern DevOps workflows operate in real companies.

---

## 🛠️ Tech Stack

| Category | Tools Used |
|-----------|------------|
| Backend | Python, Flask |
| Testing | Pytest |
| CI/CD | Jenkins (Declarative Pipeline) |
| Containerization | Docker |
| Registry | Docker Hub |
| Cloud | AWS EC2 (Ubuntu) |
| Version Control | Git & GitHub |

---

## 📂 Project Structure

```
python-flask-app/
│
├── app.py
├── requirements.txt
├── Dockerfile
├── Jenkinsfile
├── tests/
│   └── test_app.py
└── README.md
```

---

## ⚙️ CI/CD Pipeline Flow

Every push to GitHub automatically triggers:

### 1️⃣ Checkout Code  
Pull latest source from repository  

### 2️⃣ Setup Environment  
Create isolated Python virtual environment  

### 3️⃣ Install Dependencies  
Install required packages  

### 4️⃣ Run Automated Tests  
Execute Pytest to validate application  

### 5️⃣ Build Docker Image  
Package application into a container  

### 6️⃣ Push to Docker Hub  
Authenticate securely using Jenkins Credentials  

### 7️⃣ Deploy to AWS EC2  
- Stop old container  
- Pull latest image  
- Start updated container  

✔ Fully automated deployment pipeline  
✔ No manual production steps  

---

## 🧪 Automated Testing

Tests are executed automatically inside the pipeline:

```bash
pytest
```

Only validated code is allowed to deploy.

---

## 🐳 Docker

### Build Image

```bash
docker build -t abdulahad9049/python-flask-app:latest .
```

### Run Container

```bash
docker run -d -p 5000:5000 abdulahad9049/python-flask-app:latest
```

---

## ☁️ AWS EC2 Deployment

- Ubuntu EC2 instance  
- Docker installed on server  
- Jenkins connects via SSH  
- Application exposed on port 5000  

Access application:

```
http://<EC2_PUBLIC_IP>:5000
```

---

## 🔐 Security Best Practices

Sensitive data is securely managed using **Jenkins Credentials**:

- Docker Hub credentials  
- EC2 SSH private key  

🚫 No hardcoded secrets in repository  
🔒 Secure authentication for deployments  

---

## 📈 Key DevOps Skills Demonstrated

- CI/CD automation  
- Infrastructure-to-application workflow understanding  
- Container lifecycle management  
- Secure credential handling  
- Cloud deployment automation  
- Production-style pipeline structuring  

---

## 🚀 Future Enhancements

- Add Nginx reverse proxy  
- Implement Docker Compose  
- Add GitHub webhooks  
- Blue-Green deployment strategy  
- Monitoring with Prometheus & Grafana  

---

## 👨‍💻 Author

**Abdul Ahad**  
Junior DevOps Engineer | CI/CD | Docker | AWS | Automation  

🔗 GitHub: https://github.com/Ahad9049  
🔗 Docker Hub: https://hub.docker.com/r/abdulahad9049/python-flask-app
