pipeline {
    agent {dockerfile true}

    stages {
        stage('test') {
            steps {
                bat '''
                python -version
                '''
            }
        }
    }
}
