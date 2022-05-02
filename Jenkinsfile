pipeline {
    agent { dockerfile true } // Use the Dockerfile 
    // agent { docker { image 'node:14-alpine' }

    stages {
        stage('Verify we are in the docker container') {
            steps {
                sh 'node --version'
            }
        }
    }
}

