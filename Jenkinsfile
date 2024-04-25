// pipeline {
//     agent any

//     stages {
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
//---------------------
// pipeline {
//     agent any

//     stages {
//         stage('Build Docker Image') {
//             steps {
//                 script {
//                     dockerImage = docker.build("python-img")
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
//                         bat 'echo "Executing commands inside Docker container"'
//                     }
//                 }
//             }
//         }
//     }
// }
//----------------------
pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("python-img")
                }
            }
        }

        stage('Run Docker Image') {
            steps {
                script {
                    dockerImage.run()
                }
            }
        }

        stage('Execute Commands in Docker Image') {
            steps {
                script {
                    dockerImage.inside {
                        sh 'echo "Executing commands inside Docker container"'
                    }
                }
            }
        }
    }
}
