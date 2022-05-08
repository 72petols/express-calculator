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
            when {
                anyOf {
                    branch 'develop';
                    branch 'feature/*'
                }
            }
            steps {
                echo 'Running unit-tests'
                sh 'npm run unit-test'
            }
        }
        stage('Tests: Integration tests') {
            when {
                branch 'develop'
            }
            steps {
                echo 'Running integration-tests'
                sh 'npm run integration-test'
            }
        }
        stage('Delivery') {
            when {
                branch 'main'
            }
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
                        def image = docker.build("72petols/express-calculator")
                        image.push("$BUILD_NUMBER")
                        image.push("latest")
                    }
                }
            }
        }
    }
}
