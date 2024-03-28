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
                    // args '-v /var/jenkins_home/workspace:/workspace'
                }
            }
            steps {
                script {
                    // Build Docker image using the Dockerfile in the cloned repository
                    // def dockerImage = docker.build('myimage', '-t myimage:latest .')
                    bat "docker pull python:3.9"
                    bat "docker build -t python-app ."
                    
                }
            }
        }
    }
}
// pipeline {
//     agent any

//     stages {
//         stage('Build Docker Image') {
//             steps {
//                 script {
//                     dockerImage = docker.build("my-docker-image")
//                 }
//             }
//         }

//         stage('Run Docker Image') {
//             steps {
//                 script {
//                     dockerImage.run()
//                 }
//             }
//         }

//         stage('Execute Commands in Docker Image') {
//             steps {
//                 script {
//                     dockerImage.inside {
//                         bat 'ls -al'
//                         bat 'pwd'
//                         bat 'echo "Executing commands inside Docker container"'
//                     }
//                 }
//             }
//         }
//     }

//     post {
//         always {
//             // Clean up after execution
//             cleanWs()
//             dockerImage.stop()
//             dockerImage.remove()
//         }
//     }
// }
