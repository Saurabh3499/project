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
                // Remove old container if it exists
                sh '''
                if sudo podman ps -a --format "{{.Names}}" | grep -Eq "^my-website-container\$"; then
                    echo "Stopping and removing existing container..."
                    sudo podman stop my-website-container
                    sudo podman rm my-website-container
                fi
                '''

                // Run new container
                sh 'sudo podman run -d -p 8081:80 --name my-website-container my-website'
            }
        }
    }
}
