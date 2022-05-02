pipeline {
    agent {
        docker { image 'node:14-alpine' }
    }
    stages {
        stage('Verify we are in docker container') {
            steps {
                sh 'node --version'
            }
        }
    }
}

