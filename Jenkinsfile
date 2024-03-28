// pipeline {
//     agent any

//     stages {
//         stage('Clone repository') {
//             steps {
//                 script {
//                     // Clone the GitHub repository
//                     git branch: 'main', url: 'https://github.com/Sakthi06k/docker_py.git'
//                 }
//             }
//         }

//         stage('Build Docker image') {
//             agent {
//                 docker { 
//                     image 'python'
//                     // args '-v /var/jenkins_home/workspace:/workspace'
//                 }
//             }
//             steps {
//                 script {
//                     // Build Docker image using the Dockerfile in the cloned repository
//                     // def dockerImage = docker.build('myimage', '-t myimage:latest .')
//                     bat "docker pull python:3.9"
//                     bat "docker build -t python-app ."
                    
//                 }
//             }
//         }
//     }
// }
pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
              script{
            docker.image('python').inside {
            bat "sakthi06k"
        }
              }
        }
    }
}
}
