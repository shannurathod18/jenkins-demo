pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                echo 'Code is already checked out by Jenkins'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t jenkins-demo .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run --rm jenkins-demo'
            }
        }

    }
}
