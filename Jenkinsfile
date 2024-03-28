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
                     args '-v $PWD:/workspace'
                }
            }
            steps {
                script {
                    // Build Docker image using the Dockerfile in the cloned repository
                    // def dockerImage = docker.build('myimage', '-t myimage:latest .')
                    bat "docker build -t python-app ."
                }
            }
        }
    }
}
