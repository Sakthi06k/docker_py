pipeline {
    agent {
        dockerfile {
            filename 'Dockerfile'
        }
    }
    
    stages {
        stage('test') {
            steps {
                script {
                    bat '''
                    python --version
                    '''
                }
            }
        }
    }
}
