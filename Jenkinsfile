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
                sh 'docker build -t vinodh2018/jenkins-demo:latest .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run --rm vinodh2018/jenkins-demo:latest'
            }
        }

        stage('Push Docker Image') {
            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'dockerhub-credentials',
                    usernameVariable: 'DOCKER_USERNAME',
                    passwordVariable: 'DOCKER_PASSWORD'
                )]) {
                    sh '''
                        echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
                        docker push vinodh2018/jenkins-demo:latest
                        docker logout
                    '''
                }
            }
        }

    }
}
