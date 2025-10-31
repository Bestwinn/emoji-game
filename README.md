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

```text
+-------------+         +-------------+         +---------------+         +-------------+         +---------------+
|  Developer  |  --->   |   GitHub    |  --->   |  Azure DevOps |  --->   |  Docker Hub |  --->   |  Kubernetes   |
| (Source Code)|        | (Repo & CI) |        | (CI/CD Build) |        | (Image Repo)|        | (Deployment)  |
+-------------+         +-------------+         +---------------+         +-------------+         +---------------+
                                             | Terraform (IaC) |
                                             +-----------------+
