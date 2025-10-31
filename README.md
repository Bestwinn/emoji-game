# 🎮 DevOps-Driven Emoji Game Infrastructure

## 📘 Overview
The **Emoji Game** is a simple interactive web-based game designed to demonstrate a complete **DevOps CI/CD pipeline** — integrating Docker, Kubernetes, Terraform, GitHub, Docker Hub, and Azure DevOps.  
This project automates the build, deployment, and infrastructure provisioning of a lightweight web app using modern DevOps practices.

---

## 🚀 Features
- 🌐 Responsive Emoji Game web app (HTML, CSS, JS)
- 🐳 Dockerized application
- ☁️ Container image hosted on **Docker Hub**
- ⚙️ Continuous Integration / Continuous Deployment via **Azure DevOps**
- 🧩 Infrastructure as Code using **Terraform**
- ☸️ Automated deployment on **Kubernetes (Minikube)**
- 🔄 Version control and collaboration through **Git & GitHub**

---

## 🧠 Architecture
<img width="952" height="693" alt="Picture1" src="https://github.com/user-attachments/assets/77cfa4ab-907a-4863-ac06-1e0c9359bff6" />




⚙️ Setup Instructions
1️⃣ Clone the Repository
git clone https://github.com/Bestwinn/emoji-game.git
cd emoji-game

2️⃣ Build & Run Locally with Docker
docker build -t emoji-game .
docker run -p 8080:80 emoji-game


Then open: http://localhost:8080

3️⃣ Deploy on Kubernetes (Minikube)
minikube start
kubectl apply -f kubernetes/deployment.yaml
kubectl apply -f kubernetes/service.yaml
minikube service emoji-game-service

4️⃣ Provision via Terraform
cd terraform
terraform init
terraform apply -auto-approve
