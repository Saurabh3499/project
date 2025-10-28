pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/Saurabh3499/project.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'sudo podman build -t my-website .'
            }
        }

        stage('Run Container') {
            steps {
                sh 'sudo podman run -d -p 8081:80 --name my-website-container my-website'
            }
        }
    }
}
