pipeline {
    agent any
    stages {
        stage('Install packages') {
            steps {
                echo 'Running npm install'
                sh 'npm install'
            }
        }
        stage('Tests: Unit tests') {
            steps {
                echo 'Running unit-tests'
                sh 'npm run unit-test'
            }
        }
        stage('Tests: Integration tests') {
            steps {
                echo 'Running integration-tests'
                sh 'npm run integration-test'            
            }
        }
    }
}
