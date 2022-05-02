pipeline {
    agent {
        docker { image 'node:14-alpine' }
    }
    stages {
        stage('Verify were in docker container') {
            steps {
                sh 'node --version'
            }
        }
    }
}

