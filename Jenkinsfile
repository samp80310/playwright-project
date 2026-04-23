pipeline {
    agent any

    stages {

        stage('Clone Code') {
            steps {
                git 'https://github.com/samp80310/playwright-project.git'
            }
        }

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
