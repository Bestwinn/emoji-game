pipeline {
    agent any

    environment {
        IMAGE_NAME = "bestwinn/emoji-game" // change this to your DockerHub repo name
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
                script {
                    echo 'Building Docker image...'
                    bat 'docker build -t $IMAGE_NAME:latest .'
                }
            }
        }

        stage('Push to Docker Hub') {
            steps {
                script {
                    echo 'Pushing image to Docker Hub...'
                    withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'DOCKER_PASS', usernameVariable: 'DOCKER_USER')]) {
                        bat 'echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin'
                        bat 'docker push $IMAGE_NAME:latest'
                    }
                }
            }
        }
    }

    post {
        success {
            echo '✅ Docker image built and pushed successfully!'
        }
        failure {
            echo '❌ Build failed. Please check console logs.'
        }
    }
}
