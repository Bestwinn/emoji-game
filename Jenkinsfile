pipeline {
    agent any

    environment {
        IMAGE_NAME = 'emoji-game'
    }

    stages {
        stage('Checkout') {
            steps {
                echo 'Cloning repository...'
                git 'https://github.com/Bestwinn/emoji-game.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    echo 'Building Docker image...'
                    bat "docker build -t %IMAGE_NAME%:latest ."
                }
            }
        }

        stage('Push to Docker Hub') {
            steps {
                script {
                    echo 'Pushing Docker image...'
                    bat "docker push %IMAGE_NAME%:latest"
                }
            }
        }
    }

    post {
        success {
            echo '✅ Build and push completed successfully!'
        }
        failure {
            echo '❌ Build failed. Please check console logs.'
        }
    }
}
