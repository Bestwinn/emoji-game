pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Cloning repository...'
                git branch: 'main', url: 'https://github.com/Bestwinn/emoji-game.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Simulating build process...'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Simulating deploy process...'
            }
        }
    }

    post {
        always {
            echo 'Pipeline execution complete'
        }
    }
}
