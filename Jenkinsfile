pipeline {
    agent any
    stages {
        stage('Install packages') {
            steps {
                echo 'Running npm install'
                sh 'npm install'
            }
        }
        stage('Running unit tests') {
            steps {
                echo 'Running unit-tests'
                sh 'npm run unit-test'
            }
        }
        stage('Running integration tests') {
            steps {
                echo 'Running integration-tests'
                sh 'npm run integration-test'            
            }
        }
    }
}