pipeline {
    agent any

    stages {

        stage('Build') {
            steps {
                echo 'Building application'
                sh 'cat app.txt'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests'
                sh 'echo Tests completed successfully'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying application'
                sh 'echo Application deployed successfully'
            }
        }

    }
}
