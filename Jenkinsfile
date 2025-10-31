pipeline {
    agent any

    environment {
        IMAGE_NAME = "bestwinn/emoji-game"
    }

    stages {
        stage('Checkout') {
            steps {
                echo 'Cloning repository...'
                git branch: 'main', url: 'https://github.com/Bestwinn/emoji-game.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                bat 'docker build -t bestwinn/emoji-game:latest .'
            }
        }

        stage('Push to Docker Hub') {
            steps {
                echo 'Pushing image to Docker Hub...'
                bat 'docker push bestwinn/emoji-game:latest'
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                echo 'Deploying to Kubernetes cluster...'
                bat 'kubectl apply -f k8s-deployment.yaml'
                bat 'kubectl rollout status deployment/emoji-game'
            }
        }
    }

    post {
        success {
            echo '✅ Pipeline executed successfully! Application deployed.'
        }
        failure {
            echo '❌ Build failed. Please check logs.'
        }
    }
}
