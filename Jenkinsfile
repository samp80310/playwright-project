pipeline {
    agent any

    stages {

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t playwright-tests .'
            }
        }

        stage('Run Tests') {
            steps {
                sh 'docker run playwright-tests'
            }
        }
    }
}
