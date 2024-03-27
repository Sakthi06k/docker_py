pipeline {
    agent any

    stages {
        stage('Clone repository') {
            steps {
                script {
                    // Clone the GitHub repository
                    git branch: 'main', url: 'https://github.com/Sakthi06k/docker_py.git'
                }
            }
        }

        stage('Build Docker image') {
            agent {
                docker { 
                    image 'python'
                }
            }
            steps {
                script {
                    // Build Docker image using the Dockerfile in the cloned repository
                    def dockerImage = docker.build('my-docker-image', '-f docker_py/Dockerfile .')
                }
            }
        }
    }
}
